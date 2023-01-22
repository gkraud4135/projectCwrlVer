package co.kr.project.patternJava.adapter;

public class SearchButton {

    private MyProgram myProgram;

    public SearchButton(MyProgram _myProgram){
        myProgram = _myProgram;
    }

    //최초 전체검색으로 설정
    private SearchStrategy searchStrategy = new SearchStrategyAll();

    public void setSearchStrategy(SearchStrategy _searchStrategy){
        searchStrategy = _searchStrategy;
    }

    public void onClick() {
        searchStrategy.search();
    }
}
