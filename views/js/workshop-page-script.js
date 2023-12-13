let scrollContainer = document.querySelector(".batchCraft");
let scrollContainerCook = document.querySelector(".batchCook");
let scrollContainerReview = document.querySelector(".batchReview");

let leftCrafting = document.getElementById("leftCrafting");
let rightCrafting = document.getElementById("rightCrafting");

//Event Listener to scroll crafting carousel 3000 to the left
leftCrafting.addEventListener("click", () => {
    scrollContainer.style.scrollBehavior = "smooth";
    scrollContainer.scrollLeft -= 1470;
});

//Event Listener to scroll crafting carousel 3000 to the right 
rightCrafting.addEventListener("click", () => {
    scrollContainer.style.scrollBehavior = "smooth";
    scrollContainer.scrollLeft += 1470;
    
});

let leftCooking = document.getElementById("leftCooking");
let rightCooking = document.getElementById("rightCooking");
//Event Listener to scroll carousel 3000 to the left
leftCooking.addEventListener("click", () => {
    scrollContainerCook.style.scrollBehavior = "smooth";
    scrollContainerCook.scrollLeft -= 3000;
});

//Event Listener to scroll carousel 3000 to the right
rightCooking.addEventListener("click", () => {
    scrollContainerCook.style.scrollBehavior = "smooth";
    scrollContainerCook.scrollLeft += 3000;
    
});

let leftReview = document.getElementById("leftReview");
let rightReview = document.getElementById("rightReview");


leftReview.addEventListener("click", () => {
    scrollContainerReview.style.scrollBehavior = "smooth";
    scrollContainerReview.scrollLeft -= 1000;
});

rightReview.addEventListener("click", () => {
    scrollContainerReview.style.scrollBehavior = "smooth";
    scrollContainerReview.scrollLeft += 1000;
    
});

//Filter Categories Javascript

document.addEventListener('DOMContentLoaded', function () {
    var dropdownContent = document.getElementById('dropdownContent');
    var dropdownContent3 = document.getElementById('dropdownContent3');

    // Function to toggle the dropdown content visibility
    function toggleDropdown() {
        dropdownContent.classList.toggle('active');
    }

    function toggleDropdown3() {
        dropdownContent3.classList.toggle('active');
    }

    
    // Add click event listener for the "Where" dropdown
    document.querySelector('.dropdown-trigger').addEventListener('click', function (event) {
        event.stopPropagation(); // Prevents the click from reaching the document
        toggleDropdown();
    });

    
    document.querySelector('.dropdown-trigger3').addEventListener('click', function (event) {
        event.stopPropagation(); 
        toggleDropdown3();
    });


    // Add click event listener to close the dropdown when clicking outside of it
    document.addEventListener('click', function (event) {
        if (!dropdownContent.contains(event.target)) {
            dropdownContent.classList.remove('active');
        }
    });

    document.addEventListener('click', function (event) {
        if (!dropdownContent3.contains(event.target)) {
            dropdownContent3.classList.remove('active');
        }
    });
});

function openDatePicker() {
    $("#datepicker").datepicker("show");
  }

  $(document).ready(function() {
    $("#datepicker").datepicker({
      showButtonPanel: true,
      gotoCurrent: false, // Do not automatically go to the current date
      beforeShow: function(input, inst) {
        var buttonOffset = $("#datepicker-container button").offset();
        inst.dpDiv.css({
          top: buttonOffset.top + $("#datepicker-container button").outerHeight(),
          left: buttonOffset.left
        });
      },
      onSelect: function(dateText, inst) {
        // Update the value in the input field after selecting a date
        $(this).val(dateText);
      }
    });
  });


