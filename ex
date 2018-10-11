import java.io.IOException;

/**
 * Created by Stud on 27.09.2018.
 */
public class Main {
    public static void main(String args[]){
//        BufferedReader reader = new BufferedReader( new InputStreamReader(System.in));
//        String numbers = reader.readLine();
//

        String numbers = "(2+6)()";
        System.out.println(isCorrect(numbers));

    }

    public static boolean isCorrect(String numbers) {
        int a = 0;
        int l = numbers.length();
        if (numbers.charAt(0) == ')'){
            return false;
        }
        for (int i = 0; i < l; i++) {

            if (numbers.charAt(i) == '(') {
                a++;
            }


            if (numbers.charAt(i) == ')'){
                a--;
            }
            if (a<0) {
             return false;
         }
        }
        if (a == 0){
            return true;
        }
        else {
            return false;
        }


    }

}
