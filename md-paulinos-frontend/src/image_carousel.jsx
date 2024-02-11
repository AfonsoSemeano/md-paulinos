import React, { useEffect, useState } from "react";

function Carousel() {
  const [activeItem, setActiveItem] = useState(1);
  const itemsAmount = 4;

  useEffect(() => {
    let intervalId;
    intervalId = setInterval(() => {
        if (activeItem === itemsAmount) {
            changeImage(1);
        } else {
            changeImage(activeItem + 1);
        }
    }, 8000)

    return () => clearInterval(intervalId);
  }, [activeItem]);

  const changeImage = (itemId) => {
    setActiveItem(itemId);
  };

  return (
    <>
      <div className="carousel w-full">
        <div id="item1" className={`carousel-item w-full ${activeItem === 1 ? "block" : "hidden"}`}>
          <img src="https://daisyui.com/images/stock/photo-1625726411847-8cbb60cc71e6.jpg" className="w-full" alt="Item 1" />
        </div>
        <div id="item2" className={`carousel-item w-full ${activeItem === 2 ? "block" : "hidden"}`}>
          <img src="https://daisyui.com/images/stock/photo-1609621838510-5ad474b7d25d.jpg" className="w-full" alt="Item 2" />
        </div>
        <div id="item3" className={`carousel-item w-full ${activeItem === 3 ? "block" : "hidden"}`}>
          <img src="https://daisyui.com/images/stock/photo-1414694762283-acccc27bca85.jpg" className="w-full" alt="Item 3" />
        </div>
        <div id="item4" className={`carousel-item w-full ${activeItem === 4 ? "block" : "hidden"}`}>
          <img src="https://daisyui.com/images/stock/photo-1665553365602-b2fb8e5d1707.jpg" className="w-full" alt="Item 4" />
        </div>
      </div>
      <div className="flex justify-center w-full py-2 gap-2">
        <button onClick={() => changeImage(1)} className="btn btn-xs">1</button>
        <button onClick={() => changeImage(2)} className="btn btn-xs">2</button>
        <button onClick={() => changeImage(3)} className="btn btn-xs">3</button>
        <button onClick={() => changeImage(4)} className="btn btn-xs">4</button>
      </div>
    </>
  );
}

export default Carousel;
