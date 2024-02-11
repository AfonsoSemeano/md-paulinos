import React, { useEffect, useState } from "react";
import image_1 from "./assets/carousel_images/image_1.jpg";
import image_2 from "./assets/carousel_images/image_2.jpg";
import image_3 from "./assets/carousel_images/image_3.jpg";
import image_4 from "./assets/carousel_images/image_4.jpg";
import image_5 from "./assets/carousel_images/image_5.jpg";

function Carousel() {
  const [activeItem, setActiveItem] = useState(1);
  const itemsAmount = 5;

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
          <img src={image_1} className="w-full" alt="Item 1" />
        </div>
        <div id="item2" className={`carousel-item w-full ${activeItem === 2 ? "block" : "hidden"}`}>
          <img src={image_2} className="w-full" alt="Item 2" />
        </div>
        <div id="item3" className={`carousel-item w-full ${activeItem === 3 ? "block" : "hidden"}`}>
          <img src={image_3} className="w-full" alt="Item 3" />
        </div>
        <div id="item4" className={`carousel-item w-full ${activeItem === 4 ? "block" : "hidden"}`}>
          <img src={image_4} className="w-full" alt="Item 4" />
        </div>
        <div id="item4" className={`carousel-item w-full ${activeItem === 5 ? "block" : "hidden"}`}>
          <img src={image_5} className="w-full" alt="Item 5" />
        </div>
      </div>
      <div className="flex justify-center w-full py-2 gap-2">
        <button onClick={() => changeImage(1)} className="btn btn-xs">1</button>
        <button onClick={() => changeImage(2)} className="btn btn-xs">2</button>
        <button onClick={() => changeImage(3)} className="btn btn-xs">3</button>
        <button onClick={() => changeImage(4)} className="btn btn-xs">4</button>
        <button onClick={() => changeImage(5)} className="btn btn-xs">5</button>
      </div>
    </>
  );
}

export default Carousel;
