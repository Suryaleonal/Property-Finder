<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Finder.aspx.cs" Inherits="Finder.PropertyListings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Property Finder</title>
    <link href="Styles.css" rel="stylesheet" />
    <style>
        /* Header Styles */
        .header 
        {
        	
            background-color:gray;
            color: black;
            padding: 20px;
            text-align: center;
        }

        /* Search Form Styles */
        .search-form {
            background-color: BLACK;
            color:blue;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        .search-form input,
        .search-form select {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 5px;
            border: 1px solid #e0e0e0;
        }

        .search-form button {
            width: 100%;
            padding: 10px;
            background-color:Green;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        /* Property Listings Styles */
        .property-listings {
            background-color: #f5f5f5;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        .listing {
            background-color: YELLOW;
            color:#ffffff;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        .listing h2 {
            margin-top: 0;
        }

        .listing p {
            margin: 0;
        }

        .listing p strong {
            font-weight: bold;
        }

        /* No Listings Styles */
        .no-listings {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            color: navy;
        }

        /* Advertisement Styles */
        .advertisement {
            background-color:beige;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        .advertisement h3 {
            margin-top: 0;
        }

        .advertisement .ad {
            margin-bottom: 20px;
            border-bottom: 1px solid #e0e0e0;
            padding-bottom: 10px;
        }

        .advertisement .ad:last-child {
            border-bottom: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <h1>ACE FINDER</h1>
        </div>

        <div class="container">
            <div class="search-form">
                <asp:TextBox ID="txtLocation" runat="server" placeholder="Location"></asp:TextBox>
                <asp:DropDownList ID="ddlPropertyType" runat="server">
                    <asp:ListItem Text="Apartment" Value="Apartment" />
                    <asp:ListItem Text="House" Value="House" />
                    <asp:ListItem Text="Villa" Value="Villa" />
                </asp:DropDownList>
                <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
            </div>

            <div class="advertisement">
                <h3>ACE Apartment Sales</h3>
                <div class="ad">
              <div class="ad">
                 <h4>SURYA PALACE</h4>
                <img src="images/apartment1.jpg" alt="Apartment 1" width="200" />
               <p>Location: Downtown</p>
             <p>Price: $300,000</p>
            </div>





                <div class="ad">
                    <h4>VASAN PALACE</h4>
                    <img src="images/apartment2.jpg" alt="Apartment 2" width="200">
                    <p>Location: Waterfront</p>
                    <p>Price: $250,000</p>
                </div>
                 <div class="ad">
                    <h4>VEERA PALACE</h4>
                    <img src="images/apartment3.jpg" alt="Apartment 3" width="200">
                    <p>Location: Waterfront</p>
                    <p>Price: $350,000</p>
                </div>
                <div class="ad">
                    <h4>RAJ PALACE</h4>
                    <img src="images/apartment4.jpg" alt="Apartment 4" width="200">
                    <p>Location: Waterfront</p>
                    <p>Price: $450,000</p>
                </div>
            </div>

            <div class="property-listings">
                <asp:Repeater ID="rptListings" runat="server">
                    <ItemTemplate>
                        <div class="listing">
                            <h2><%# Eval("Title") %></h2>
                            <p><strong>Location:</strong> <%# Eval("Location") %></p>
                            <p><strong>Price:</strong> <%# Eval("Price") %></p>
                            <p><strong>Type:</strong> <%# Eval("Type") %></p>
                           
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <asp:Label ID="lblNoListings" runat="server" Visible="false" Text="No listings found." CssClass="no-listings" />
            </div>
        </div>
    </form>
</body>
</html>
