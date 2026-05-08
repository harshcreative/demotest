document.querySelector('.btn-pay').addEventListener('click', function(e) {
    e.preventDefault();

    // Get form values
    const email = document.querySelector('.payform input[name="email"]').value.trim();
    const mobile = document.querySelector('.payform input[name="mobile"]').value.trim();


    if (!email || !mobile) {
        alert("⚠️ Please fill all fields.");
        return;
    }

    // Fetch pay.json
    fetch('./json/pay.json')
        .then(response => response.json())
        .then(data => {
            // Match only Email + Mobile
            const match = data.find(record => {
                // Normalize JSON Mobile (remove .0 if exists)
                const jsonMobile = record.Mobile 
                    ? String(record.Mobile).replace(/\.0$/, '') 
                    : "";

                return (
                    record.MemberId.toLowerCase() === email.toLowerCase() &&
                    jsonMobile === mobile
                );
            });

            if (match) {
                // ✅ Redirect to payment link
                window.location.href = match.Link;
            } else {
                alert("❌ No matching record found. Please check your Email or Mobile.");
            }
        })
        .catch(err => {
            console.error("Error loading JSON:", err);
            alert("Error loading payment data.");
        });
});