ALTER TABLE public.completed_swaps
DROP CONSTRAINT completed_swaps_trade_request_id_fkey,
ADD CONSTRAINT completed_swaps_trade_request_id_fkey
  FOREIGN KEY (trade_request_id)
  REFERENCES public.trade_requests(id)
  ON DELETE SET NULL;
