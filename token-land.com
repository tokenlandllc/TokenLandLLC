import React from "react";
import { BrowserRouter as Router, Route, Routes } from "react-router-dom";
import { Navbar, Footer, Home, About, Investment, Contact, Dashboard, NotFound } from "./components";

const App = () => {
  return (
    <Router>
      <Navbar />
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/about" element={<About />} />
        <Route path="/investment" element={<Investment />} />
        <Route path="/dashboard" element={<Dashboard />} />
        <Route path="/contact" element={<Contact />} />
        <Route path="*" element={<NotFound />} /> {/* Handles unknown routes */}
      </Routes>
      <Footer />
    </Router>
  );
};

export default App;
