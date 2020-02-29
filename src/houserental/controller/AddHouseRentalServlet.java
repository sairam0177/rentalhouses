package houserental.controller;
import java.io.IOException;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import houserental.dto.AddHouseRental;
import houserental.service.Service;
import houserental.util.Validations;
@WebServlet("/addhouserental")
public class AddHouseRentalServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String house=req.getParameter("house");
		String squareFeet=req.getParameter("squareFeet");
		String rentalCost=req.getParameter("rentalCost");
		String parkingAvaliable=req.getParameter("parkingAvaliable");
		String garden=req.getParameter("garden");
		String address=req.getParameter("address");
		AddHouseRental addHouseRental=new AddHouseRental();
		addHouseRental.setHouse(house);
		addHouseRental.setSquareFeet(squareFeet);
		addHouseRental.setRentalCost(rentalCost);
		addHouseRental.setParkingAvaliable(parkingAvaliable);
		addHouseRental.setGarden(garden);
		addHouseRental.setAddress(address);
		Validations validations=new Validations();
		Map<String,String>	errorMessages=validations.addHouseRentalValidation(addHouseRental);
		if(errorMessages.size()>0) {
			req.setAttribute("errorMessages",errorMessages);
			req.getRequestDispatcher("addhouserental.jsp").forward(req, resp);
		}else {
			Service service=new Service();
			AddHouseRental rentalService=service.addHouseRentalService(addHouseRental);
			if(rentalService !=null) {
				req.getRequestDispatcher("displayDetails").forward(req, resp);
			}else {
				req.setAttribute("sql Error","some internal error occured........");
				req.getRequestDispatcher("addhouserental.jsp").forward(req, resp);
			}
		}
	}

}
