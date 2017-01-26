package data;

import java.util.ArrayList;

public interface GalleryDAO {
	public ArrayList<Painting> getPaintings();

	ArrayList<Painting> addPaintingToGallery(Painting painting);

	ArrayList<Painting> removePaintingFromGallery(String rp);

	ArrayList<Painting> updatePaintingNotes(String note, String name);

	ArrayList<Painting> clearPaintingNotes(String name);

	ArrayList<Painting> getAllPaintings();

	ArrayList<Painting> getPaintingsByArtist(String ga);
	
	
}
