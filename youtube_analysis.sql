-- Do shorter videos consistently outperform longer videos in terms of views?
SELECT ROUND(AVG("viewCount")) AS avg_views, COUNT(*) AS video_count, 
CASE
    WHEN "durationSec" < 300 THEN 'Short'
    ELSE 'Long'
  END AS video_length_type
FROM trending_videos_on_youtube_dataset
WHERE "viewCount" IS NOT NULL
GROUP BY video_length_type;
