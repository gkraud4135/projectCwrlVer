package co.kr.project.patternJava.decorator;

public class XWingFighter implements Fighter {
    @Override
    public void attack () {
        System.out.println("탄환 발사");
    }
}