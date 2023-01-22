package co.kr.project.patternJava.singleton;

public class FirstPage {

    private Settings settings = Settings.getSettings();

    public void setAndPrintSettings() {
        settings.setDarkMode(true);
        settings.setFontSize(15);

        System.out.println("darkMode : " + settings.getDarkMode());
        System.out.println("fontSize : " + settings.getFontSize());
    }
}
