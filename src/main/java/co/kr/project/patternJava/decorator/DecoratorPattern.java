package co.kr.project.patternJava.decorator;

public class DecoratorPattern {
    public static void main(String[] args) {

        new XWingFighter().attack();
        // 탄환 발사

        new LaserDecorator(new XWingFighter()).attack();
        // 탄환 발사       super.attack()  부모
        // 레이저 발사     attack()         자식

        new PlasmaDecorator(
                new MissileDecorator(
                        new LaserDecorator(
                                new XWingFighter()
                        ))).attack();
        // 탄환 발사
        // 레이저 발사
        // 미사일 발사
        // 플라즈마 발사
    }
}