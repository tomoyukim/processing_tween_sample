public class Circle {
    private float posX = 0;
    private float posY = 0;
    
    public Circle() {
    }

    public float getX() {
        return posX;
    }

    public float getY() {
        return posY;
    }

    public void setX(float posX) {
        this.posX = posX;
    }

    public void setY(float posY) {
        this.posY = posY;
    }

    public void draw() {
        pushMatrix();
        translate(posX, posY);
        noStroke();
        fill(color(0, 100, 200));
        ellipse(50,50,50,50);
        popMatrix();
    }
}
