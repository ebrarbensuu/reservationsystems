
package src;

import java.util.Date;

public class Reservation {
    private int reservationID;
    private String username;
    private String service;
    private Date reservationDate;

    public Reservation(String username, String service, Date reservationDate) {
        this.username = username;
        this.service = service;
        this.reservationDate = reservationDate;
    }

    public String getUsername() {
        return username;
    }

    public String getService() {
        return service;
    }

    public Date getReservationDate() {
        return reservationDate;
    }

    @Override
    public String toString() {
        return "Reservation by " + username + " for " + service + " on " + reservationDate;
    }
}
