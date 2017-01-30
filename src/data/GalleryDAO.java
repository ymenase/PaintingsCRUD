package data;

import java.util.ArrayList;
import java.util.List;

public interface GalleryDAO {
	public ArrayList<Painting> getPaintings();

	ArrayList<Painting> addPaintingToGallery(Painting painting);

	ArrayList<Painting> removePaintingFromGallery(String rp);

	ArrayList<Painting> updatePaintingNotes(String note, String name);

	ArrayList<Painting> clearPaintingNotes(String name);

	ArrayList<Painting> getAllPaintings();

	ArrayList<Painting> getPaintingsByArtist(String ga);

	void writeToFile(List<Painting> paintings);

	Painting getPaintingToEdit(String title);
	
	
}
