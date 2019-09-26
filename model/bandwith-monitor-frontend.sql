-- 1. Outbound Traffic
SELECT mean("bits") FROM "total_traffic" WHERE ("direction" = 'outgoing') AND time >= now() - 1h GROUP BY time(5s) fill(previous)

-- 2. Inbound Traffic
SELECT mean("bits") FROM "total_traffic" WHERE ("direction" = 'incoming') AND time >= now() - 1h GROUP BY time(5s) fill(previous)
