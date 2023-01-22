package co.kr.project.patternJava.singleton;

public class SecondPage {

    private Settings settings = Settings.getSettings();

    public void printSettings() {
        System.out.println("darkMode : " + settings.getDarkMode());
        System.out.println("fontSize : " + settings.getFontSize());
    }
}
