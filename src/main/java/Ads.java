import java.util.List;

public interface Ads {
    List<Ad> all();
    void create(Ad ad);
}