 <!DOCTYPE html>
<html>
<head>
	<title>My E-commerce Website</title>
</head>
<style>
    /* Styling for product elements */
.product {
  border: 1px solid #ccc;
  padding: 10px;
  margin-bottom: 20px;
}

.product h2 {
  margin-top: 0;
}

.product p:last-child {
  margin-bottom: 0;
}

.product button {
  display: block;
  margin-top: 10px;
}

/* Styling for cart elements */
#cart {
  border: 1px solid #ccc;
  padding: 10px;
}

#cart-message {
  font-weight: bold;
  margin-bottom: 10px;
}

#cart-items {
  list-style: none;
  margin: 0;
  padding: 0;
}

#cart-items li {
  display: flex;
  justify-content: space-between;
  margin-bottom: 10px;
}

#cart-items li button {
  margin-left: 10px;
}

#total-cost {
  font-weight: bold;
  margin-top: 10px;
}

</style>
<body>
	<h1>Products</h1>
	<div id="products">
		<div class="product">
			<h2>Product 1</h2>
			<p>Description of Product 1</p>
			<p>Price: $10.00</p>
			<button onclick="addToCart('Product 1', 10.00)">Add to Cart</button>
		</div>
		<div class="product">
			<h2>Product 2</h2>
			<p>Description of Product 2</p>
			<p>Price: $15.00</p>
			<button onclick="addToCart('Product 2', 15.00)">Add to Cart</button>
		</div>
	</div>

	<h1>Cart</h1>
	<div id="cart">
		<p id="cart-message"></p>
		<ul id="cart-items">
		</ul>
		<p id="total-cost"></p>
	</div>

	<script src="cart.js"></script>
</body>
</html>
<script>
    var cart = [];

function addToCart(itemName, itemPrice) {
  var item = {
    name: itemName,
    price: itemPrice,
    quantity: 1
  };

  // Check if item is already in cart
  for (var i = 0; i < cart.length; i++) {
    if (cart[i].name === itemName) {
      cart[i].quantity++;
      displayCartItems();
      displayTotalCost();
      return;
    }
  }

  // If item is not in cart, add to cart
  cart.push(item);
  displayCartItems();
  displayTotalCost();
}

function removeFromCart(itemName) {
  for (var i = 0; i < cart.length; i++) {
    if (cart[i].name === itemName) {
      if (cart[i].quantity > 1) {
        cart[i].quantity--;
      } else {
        cart.splice(i, 1);
      }
      displayCartItems();
      displayTotalCost();
      return;
    }
  }
}

function displayCartItems() {
  var cartItemsElement = document.getElementById('cart-items');
  cartItemsElement.innerHTML = '';

  if (cart.length === 0) {
    document.getElementById('cart-message').textContent = 'Your cart is empty';
    return;
  }

  document.getElementById('cart-message').textContent = 'You have ' + cart.length + ' item(s) in your cart';

  for (var i = 0; i < cart.length; i++) {
    var item = cart[i];
    var itemElement = document.createElement('li');
    itemElement.textContent = item.name + ' x ' + item.quantity;
    cartItemsElement.appendChild(itemElement);

    var removeButton = document.createElement('button');
    removeButton.textContent = 'Remove';
    removeButton.setAttribute('data-item-name', item.name);
    removeButton.addEventListener('click', function() {
      removeFromCart(this.getAttribute('data-item-name'));
    });
    itemElement.appendChild(removeButton);
  }
}

function getTotalCost() {
  var totalCost = 0;
  for (var i = 0; i < cart.length; i++) {
    totalCost += cart[i].price * cart[i].quantity;
  }
  return totalCost;
}

function displayTotalCost() {
  var totalCostElement = document.getElementById('total-cost');
  totalCost
}
</script> -->
<div class="nav ">
    <!--  cart icon-->
    <i class='bx bxs-cart' id="cart-icon"> </i>
    <!-- cart -->
    <div class="cart">
      <h2 class="cart-title">Your Cart</h2>
      <!-- content -->
      <div class="cart-content">
      </div>
      <!-- total -->
      <div class="total">
        <div class="total-title">Total</div>
        <div class="total-price">₹ 0</div>
      </div>
      <!-- buy button -->
      <button type="button" class="btn-buy">Buy Now</button>
      <!-- cart close -->
      <i class='bx bx-x' id="close-cart"></i>
    </div>
    </div>