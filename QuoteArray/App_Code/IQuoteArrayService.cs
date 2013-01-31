using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IQuoteArrayService" in both code and config file together.
[ServiceContract]
public interface IQuoteArrayService
{
	[OperationContract]
	string QuoteFinder(int usrChoice)
    {
        int indexNum = usrChoice - 1; 
     string[] quotes = {"one","two","three","four","five"};   
        return quotes[indexNum]; 
    }
}
