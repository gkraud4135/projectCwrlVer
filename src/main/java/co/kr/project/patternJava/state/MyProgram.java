package co.kr.project.patternJava.state;

public class MyProgram {

    public static void main(){

        final ModeSwitch modeSwitch = new ModeSwitch();

        modeSwitch.onSwitch();  //최초 LIGHT로 생성된후 DARK로 변경
        modeSwitch.onSwitch();  // LIGHT
        modeSwitch.onSwitch();  // DARK
        modeSwitch.onSwitch();  // LIGHT
    }
}
