package co.kr.project.patternJava.singleton;

public class Settings {

    private Settings() {}   //다른 클래스에서 new생성 못하도록 설정
    private static Settings settings = null; //컴파일에 하나만 생성

    public static Settings getSettings() { //세팅은 한번만 이루어지며
        if(settings == null) {             //최초 생성, 후 생성된 세팅 리턴
            settings = new Settings();
        }
        return settings;
    }

    private boolean darkMode = false;
    private int fontSize = 13;

    public boolean getDarkMode() {
        return darkMode;
    }
    public int getFontSize() {
        return fontSize;
    }

    public void setDarkMode(boolean darkMode) {
        this.darkMode = darkMode;
    }
    public void setFontSize(int fontSize) {
        this.fontSize = fontSize;
    }
}
