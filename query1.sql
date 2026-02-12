CREATE TABLE music_video (
    track_id INTEGER PRIMARY KEY,
    
    video_director NVARCHAR(200),
    
    CONSTRAINT fk_music_videos_tracks 
        FOREIGN KEY (track_id) 
        REFERENCES tracks (TrackId)
        ON DELETE CASCADE
);