import { serve } from 'https://deno.land/std@0.177.0/http/server.ts'

const _OnesignalAppId_ = Deno.env.get('ONESIGNAL_APP_ID')!
const _OnesignalRestApiKey_ = Deno.env.get('ONESIGNAL_REST_API_KEY')!

interface EdgePayload {
  record: {
    id: string
    notification_type: string
    title: string
    content: string
    payload: any
    user_id: string
  }
}

serve(async (req) => {
  try {
    console.log('Notify function invoked with request:', {
      method: req.method,
      url: req.url,
    });

    const body = await req.json()
    const edgePayload = body as EdgePayload
    const { id: notification_id, notification_type, title, content, payload, user_id } = edgePayload.record
    
    console.log('Notification payload:', {
      notification_id,
      notification_type,
      title,
      content,
      payload,
      user_id
    })

    // Build OneSignal notification object
    const notification = {
      app_id: _OnesignalAppId_,
      contents: {
        en: content,
      },
      headings: {
        en: title,
      },
      include_external_user_ids: [user_id],
      data: {
        notification_type: notification_type,
        payload: payload,
      },
      ...(notification_type !== 'message' && {
        android_group: `non_message_notification`,
        android_group_message: {
          en: `New notification from ${title}`
        },
        thread_id: `non_message_notification`,
      }),
      ...(notification_type === 'message' && {
        android_group: `chat_${payload.recipient_id}`,
        android_group_message: {
          en: `${payload.notif_count} new messages from ${title}`
        },
        thread_id: `chat_${payload.recipient_id}`,
      }),
    }

    console.log('Notification Object:', notification);

    try {
      console.log('Creating OneSignal notification...');
      const response = await fetch('https://onesignal.com/api/v1/notifications', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': `Basic ${_OnesignalRestApiKey_}`,
        },
        body: JSON.stringify(notification),
      });

      if (!response.ok) {
        const errorData = await response.json();
        throw new Error(`OneSignal API error: ${JSON.stringify(errorData)}`);
      }

      const onesignalApiRes = await response.json();
      console.log('OneSignal notification created:', onesignalApiRes.id);

      return new Response(
        JSON.stringify({ 
          success: true,
          onesignalResponse: onesignalApiRes,
        }),
        {
          headers: { 'Content-Type': 'application/json' },
        }
      )
    } catch (e) {
      console.error('Error creating OneSignal notification:', e);
      throw e;
    }
  } catch (err) {
    console.error('Failed to create OneSignal notification:', err)
    return new Response(
      JSON.stringify({ 
        success: false, 
        error: err.message 
      }), 
      {
        headers: { 'Content-Type': 'application/json' },
        status: 400,
      }
    )
  }
})
