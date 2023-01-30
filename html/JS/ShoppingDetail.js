const count = document.getElementsByName('count'),
    sell_price = document.count.sell_price,
    amount = document.count.amount,
    add = document.count.add,
    minus = document.count.minus,
    sum = document.count.sum;;
if(count){
    sum.value = sell_price.value;
    let amountval = amount.value,
        sumval = sum.value,
        priceval = sell_price.value;
    if(add){
        add.addEventListener('click', function(){
            amountval++;
            sumval = amountval*priceval;
            amount.value=amountval;
            sum.value=sumval;
            console.log(amountval,sumval,priceval);
        })
    }
    if(minus){
        minus.addEventListener('click', function(){
            if(amountval > 1){
                amountval--;
                sumval = amountval*priceval;
                amount.value=amountval;
                sum.value=sumval;
                console.log(amountval,sumval,priceval);
            }else{
                amountval=1;
            }
        })
    }
}