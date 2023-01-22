package co.kr.project.patternJava.adapter;

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

class SearchFindAdapter implements SearchStrategy {
    private FindAlgorithm findAlgorithm; //멤버 변수로 findAlgorithm 객체

    public SearchFindAdapter(FindAlgorithm _findAlgorithm) { //생성자를 통해 주입
        findAlgorithm = _findAlgorithm; //동영상 검색
    }

    public void search() { //실행시 설정된 해당 메서드 실행
        findAlgorithm.find(true);
    }
}
