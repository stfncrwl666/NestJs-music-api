-- CreateTable
CREATE TABLE "_MusicToPlaylist" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_MusicToPlaylist_AB_unique" ON "_MusicToPlaylist"("A", "B");

-- CreateIndex
CREATE INDEX "_MusicToPlaylist_B_index" ON "_MusicToPlaylist"("B");

-- AddForeignKey
ALTER TABLE "_MusicToPlaylist" ADD CONSTRAINT "_MusicToPlaylist_A_fkey" FOREIGN KEY ("A") REFERENCES "Music"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_MusicToPlaylist" ADD CONSTRAINT "_MusicToPlaylist_B_fkey" FOREIGN KEY ("B") REFERENCES "Playlist"("id") ON DELETE CASCADE ON UPDATE CASCADE;
