using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using StoreFront.UI.MVC.Models;//Added for access to CartItemViewModel

namespace StoreFront.UI.MVC.Controllers
{
    public class ShoppingCartController : Controller
    {
        // GET: ShoppingCart -- Generate this view w the list template for CartItemViewModel objects (No data content)
        public ActionResult Index()
        {
            //Pull session cart into a local variable, which we can then pass to the View
            var shoppingCart = (Dictionary<int, CartItemViewModel>)Session["cart"];

            if (shoppingCart == null || shoppingCart.Count == 0)
            {
                //User either hasn't put anything in the cart, removed all cart items, or the Session expired..... (Default 20 min session)
                //Set cart to empty cart object (we can still send that to the View, unlike a NULL value.
                shoppingCart = new Dictionary<int, CartItemViewModel>();

                //Create a message informing them about the empty cart
                ViewBag.Message = "There are no items in your cart.";
            }
            else
            {
                ViewBag.Message = null;//Explicitly clear out the ViewBag variable. 
            }

            return View(shoppingCart);
        }

        public ActionResult RemoveFromCart(int id)
        {
            //Get the cart from Session and put it in a local variable. 
            Dictionary<int, CartItemViewModel> shoppingCart = (Dictionary<int, CartItemViewModel>)Session["cart"];

            //Remove the item
            shoppingCart.Remove(id);

            //Update the Session
            Session["cart"] = shoppingCart;

            return RedirectToAction("Index");
        }

        public ActionResult UpdateCart(int productID, int qty)
        {
            //Get the cart from the Session and store it in a local variable
            Dictionary<int, CartItemViewModel> shoppingCart = (Dictionary<int, CartItemViewModel>)Session["cart"];

            //Target correct cart item using bookID for the key. Then change the Qty property with the qty parameter
            shoppingCart[productID].Qty = qty;

            //return the (now updated) local cart to the session 
            Session["cart"] = shoppingCart;

            //Send the user to the Shopping Cart Index to see the update cart
            return RedirectToAction("Index");
        }
    }
}