package co.kr.project.patternJava.proxy;

import java.util.ArrayList;

public class MyProgram {

    public static void main() {
        ArrayList<Thumbnail> thumbnails = new ArrayList<Thumbnail>();

        // 영상 리스트 프록시 객체를 통해 제목, url 다운
        thumbnails.add(new ProxyThumbnail("git강좌", "/git.mp4"));
        thumbnails.add(new ProxyThumbnail("docker강좌", "/docker.mp4"));
        thumbnails.add(new ProxyThumbnail("api강좌", "/api.mp4"));

        // 화면에 제목 출력
        for (Thumbnail thumbnail : thumbnails) {
            thumbnail.showTitle();
        }

        // 최초 호버시 영상 다운 후 출력
        thumbnails.get(0).showPreview(); //git
        thumbnails.get(1).showPreview(); //docker
        thumbnails.get(2).showPreview(); //api
    }
}
