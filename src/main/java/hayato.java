
public class hayato {

    public static void main(String[] args) {

        int[] arrayA = {1,2,3,4,5};
        int[] arrayB;
        arrayB = arrayA;
        arrayB[2] = 100;
        arrayB[4] = 99;
        for(int a : arrayA) {
            System.out.println(a);
        }
        for(int b : arrayB) {
            System.out.println(b);
        }

    }

}
