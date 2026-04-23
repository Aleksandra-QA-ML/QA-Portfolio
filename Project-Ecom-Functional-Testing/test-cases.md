# Test Cases: Shopping Cart & Checkout Flow

**Linked Issue:** #2

| ID | Title | Priority | Pre-conditions | Steps | Expected Result |
|:---|:---|:---:|:---|:---|:---|
| TC-01 | Add Item to Cart | High | User is on Product Page | 1. Click "Add to Cart" <br> 2. Open Cart page | Item is added; Cart count increments by 1. |
| TC-02 | Cart Total Calculation | High | Items added to Cart | 1. Change quantity to "3" <br> 2. Observe Subtotal | Total price correctly reflects Price * 3. |
| TC-03 | Empty Cart Validation | Medium | Cart is empty | 1. Navigate to Checkout page | System displays "Your cart is empty" message; Checkout is blocked. |
| TC-04 | Invalid Email Format | High | User on Checkout form | 1. Enter "test@@user" in Email field <br> 2. Click "Next" | Error message: "Please enter a valid email address." |
| TC-05 | Boundary Value: Max Quantity | Low | User in Cart | 1. Set quantity to 999 <br> 2. Update Cart | System handles limit or displays "Out of stock/Limit reached" message. |

---
*Status: Draft / Ready for Execution*
