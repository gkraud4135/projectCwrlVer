package co.kr.project.patternJava.command;

abstract class Command {
    protected Robot robot;

    public void setRobot(Robot _robot) {    //공통으로 사용될 로봇세팅
        this.robot = _robot;
    }
    public abstract void execute();         //상속 받은 자식이 설정하여 사용할 명령
}

// 전진명령
class MoveForwardCommand extends Command{
    int space;
    public MoveForwardCommand(int _space) { // 지정된 칸수만큼
        space = _space;
    }
    public void execute() {
        robot.moveForward(space);           // 전진
    }
}

// 회전 명령
class TurnCommand extends Command {
    Robot.Direction direction;
    public TurnCommand(Robot.Direction _direction) {    // 지정된 방향으로
        direction = _direction;
    }
    public void execute() { // 회전
        robot.turn(direction);
    }
}

// 집기 명령
class PickupCommand extends Command {
    public void execute() { //회전
        robot.pickup();
    }
}
