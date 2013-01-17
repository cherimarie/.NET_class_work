using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    /// <summary>
    /// Descr: This class implements a calculator! 
    /// Date: Jan 10 2013
    /// Prog: Cheri Allen 
    /// </summary>

    double number1 = 0; //the first string entered to textbox
    double number2 = 0; //the second string enetered to textbox
    double answer; //the solution that shows up after = is pressed
    int sessionCheck = 1; //a flag to see if session is set, boolean could work too

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void inputNumber_click(object sender, EventArgs e)
    { //all number buttons have this event 
        Button b = (Button)sender;
        TxtDisplay.Text += b.Text;
    }

    protected void ClearButton_Click(object sender, EventArgs e)
    {
        Clear();
    }

    protected void PlusButton_Click(object sender, EventArgs e)
    {
        GetNumbers();
        Session["Solution"] = number1 + number2;
        Session["Operator"] = "+";
    }

    protected void MinusButton_Click(object sender, EventArgs e)
    {
        GetNumbers();
        if (sessionCheck == 0)
        {
            Session["Solution"] = number2;
        }
        else
        {
            Session["Solution"] = number1 - number2; 
        }
        Session["Operator"] = "-";
    }

    protected void MultiplicationButton_Click(object sender, EventArgs e)
    {
        GetNumbers();
        if (sessionCheck == 0)
        {
            Session["Solution"] = number2;
        }
        else
        {
            Session["Solution"] = number1 * number2;
        }
        Session["Operator"] = "*";
    }

    protected void DivideButton_Click(object sender, EventArgs e)
    {
        GetNumbers();
        if (sessionCheck == 0)
        {
            Session["Solution"] = number2;
        }
        else
        {
            Session["Solution"] = number1 * number2;
        }
        Session["Operator"] = "/";
    }

    protected void Clear()
    {
        TxtDisplay.Text = "";
    }

    protected void EqualsButton_Click(object sender, EventArgs e)
    {
        number1 = (double)Session["Solution"];
        number2 = double.Parse(TxtDisplay.Text);
        string op = Session["Operator"].ToString();

        switch (op)
        {
            case "+":
                answer = number1 + number2;
                break;
            case "-":
                answer = number1 - number2;
                break;
            case "*":
                answer = number1 * number2;
                break;
            case "/":
                answer = number1 / number2;
                break;
        }
        TxtDisplay.Text = answer.ToString();
        Session["Solution"] = null;
    }

    protected void GetNumbers()
    {
        if (Session["Solution"] == null)
        {
            sessionCheck = 0;
        }
        else
        {
            number1 = (double)Session["Solution"];
        }
        bool isNumber = double.TryParse(TxtDisplay.Text, out number2);
        if (!isNumber)
        {
         Clear();
        return;
        }
        Clear();
    
    }

   
}