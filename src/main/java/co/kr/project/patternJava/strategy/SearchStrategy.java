package co.kr.project.patternJava.strategy;

public interface SearchStrategy {
    public void search(); //search라는 다형성을 형성한 공통 메서드 생성
}

class SearchStrategyAll implements SearchStrategy {
    @Override
    public void search() {
        System.out.println("SEARCH ALL"); //전체검색
     }
}

class SearchStrategyImage implements SearchStrategy {
    @Override
    public void search() {
        System.out.println("SEARCH IMAGE"); //이미지검색
    }
}

class SearchStrategyNews implements SearchStrategy {
    @Override
    public void search() {
        System.out.println("SEARCH NEWS"); //뉴스검색
    }
}


class SearchStrategyMap implements SearchStrategy {
    @Override
    public void search() {
        System.out.println("SEARCH MAP"); //지도검색
    }
}

