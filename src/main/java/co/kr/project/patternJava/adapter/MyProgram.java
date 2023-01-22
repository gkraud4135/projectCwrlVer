package co.kr.project.patternJava.adapter;

public class MyProgram {

    private SearchButton searchButton = new SearchButton(this);

    public void setModelAll() {
        searchButton.setSearchStrategy(new SearchStrategyAll());
    }
    public void setModelImage() {
        searchButton.setSearchStrategy(new SearchStrategyImage());
    }
    public void setModelNews() {
        searchButton.setSearchStrategy(new SearchStrategyNews());
    }
    public void setModelMap() {
        searchButton.setSearchStrategy(new SearchStrategyMap());
    }
    public void setModelMovie() {
        searchButton.setSearchStrategy(
                new SearchFindAdapter(new FindMovieAlgorithm()));
    }

    public void testProgram(){
        searchButton.onClick(); //최초 전체검색으로 검색

        setModelImage();        //Image검색
        searchButton.onClick();

        setModelNews();         //News검색
        searchButton.onClick();

        setModelMap();          //Map검색
        searchButton.onClick();

        setModelMovie();        //Movie검색
        searchButton.onClick();
    }
}
