INSERT INTO music_video(track_id, video_director)
    SELECT TrackId, "It Worked 🎉"
    FROM tracks
    WHERE Name == "Voodoo";