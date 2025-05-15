
package src;

import java.util.ArrayList;
import java.util.Date;
import java.util.Scanner;

public class Main {
    static ArrayList<Reservation> reservationList = new ArrayList<>();

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Enter username:");
        String username = scanner.nextLine();

        System.out.println("Select a service: Haircut, Massage, Table Reservation");
        String service = scanner.nextLine();

        Date date = new Date(); // şimdiki zamanı kullan

        Reservation res = new Reservation(username, service, date);
        reservationList.add(res);

        System.out.println("Reservation created successfully!");
        System.out.println(res);
    }
}
