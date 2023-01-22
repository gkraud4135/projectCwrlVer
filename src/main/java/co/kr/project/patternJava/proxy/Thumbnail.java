package co.kr.project.patternJava.proxy;

interface Thumbnail {
    public void showTitle();    //제목
    public void showPreview();  //프리뷰
}

// 실제 영상 출력 클래스
class RealThumbnail implements Thumbnail {
    private String title;
    private String movieUrl;

    // 생성자로 부터 영상을 받아오는, 시간이 걸리는 작업 수행
    public RealThumbnail(String _title, String _movieUrl) {
        title = _title;
        movieUrl = _movieUrl;

        // 영상 다운
        System.out.println(movieUrl + "로부터" + title + "의 영상 데이터 다운");
    }

    public void showTitle() {
        System.out.println("제목: " + title);
    }

    public void showPreview() {
        System.out.println(title + "의 프리뷰 재생");
    }
}

// 대리인 클래스
class ProxyThumbnail implements Thumbnail {
    private String title;
    private String movieUrl;

    private RealThumbnail realThumbnail;

    public ProxyThumbnail(String _title, String _movieUrl){
        title = _title;
        movieUrl = _movieUrl;
    }

    public void showTitle() {
        System.out.println("제목: " + title);
    }

    public void showPreview() {
        // 최초 호버시 영상 다운
        if(realThumbnail == null) {
            realThumbnail = new RealThumbnail(title, movieUrl);
        }
        realThumbnail.showPreview(); //후 출력
    }
}
