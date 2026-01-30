-- Query: Joining Song Metadata with Audio Features
-- Author: Kainoa Pajo

SELECT 
    s.track_name,
    s.artist_name,
    f.danceability,
    f.energy,
    f.duration_ms / 60000.0 AS duration_min,
    -- Feature Extraction: Labeling songs for the model
    CASE 
        WHEN f.danceability > 0.8 AND f.energy > 0.7 THEN 'High Viral Potential'
        ELSE 'Standard Potential'
    END AS viral_category
FROM 
    tiktok_trending_songs s
JOIN 
    spotify_audio_features f ON s.track_id = f.track_id
WHERE 
    s.chart_rank <= 50
ORDER BY 
    f.danceability DESC;
