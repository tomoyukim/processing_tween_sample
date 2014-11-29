public class CircleAccessor implements TweenAccessor<Circle> {
    public static final int POSITION_XY = 0;

    @Override
    public int getValues(Circle target, int tweenType, float[] returnValues) {
        returnValues[0] = target.getX();
        returnValues[1] = target.getY();
        println("var: "+target.getX());

        return 2;
    }

    @Override
    public void setValues(Circle target, int tweenType, float[] newValues) {
        target.setX(newValues[0]);
        target.setY(newValues[1]);
    }
}
