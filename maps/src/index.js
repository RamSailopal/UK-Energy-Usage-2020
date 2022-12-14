import React from 'react';
import ReactDOM from 'react-dom';
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Lowmeangas from "./pages/lowmeangas1.js";
import Highcongas from "./pages/highcongas1.js";
import Highmeangas from "./pages/highmeangas1.js";
import Highmediangas from "./pages/highmediangas1.js";
import Lowcongas from "./pages/lowcongas1.js";
import Lowmediangas from "./pages/lowmediangas1.js";
import Lowmeanelec from "./pages/lowmeanelec1.js";
import Highconelec from "./pages/highconelec1.js";
import Highmeanelec from "./pages/highmeanelec1.js";
import Highmedianelec from "./pages/highmedianelec1.js";
import Lowconelec from "./pages/lowconelec1.js";
import Lowmedianelec from "./pages/lowmedianelec1.js";
import Pcode from "./pages/pcode.js";
import NoPage from "./pages/nopage";
import './index.css';
import axios from 'axios';
import { BarChart, Bar, Cell, XAxis, YAxis, CartesianGrid, Tooltip, Legend, ResponsiveContainer } from 'recharts';
import { MapContainer, TileLayer, Marker, Popup } from 'react-leaflet'

export default function App() {
  return (
    <BrowserRouter>
      <Routes>
          <Route path="/" element={<Highcongas />} />
          <Route path="lowmeangas" element={<Lowmeangas />} />
          <Route path="lowcongas" element={<Lowcongas />} />
          <Route path="highcongas" element={<Highcongas />} />
          <Route path="highmeangas" element={<Highmeangas />} />
          <Route path="highmedgas" element={<Highmediangas />} />
          <Route path="lowmedgas" element={<Lowmediangas />} />
          <Route path="lowmeanelec" element={<Lowmeanelec />} />
          <Route path="lowconelec" element={<Lowconelec />} />
          <Route path="highconelec" element={<Highconelec />} />
          <Route path="highmeanelec" element={<Highmeanelec />} />
          <Route path="highmedelec" element={<Highmedianelec />} />
          <Route path="lowmedelec" element={<Lowmedianelec />} />
          <Route path="pcode/:id" element={<Pcode />} />
          <Route path="*" element={<NoPage />} />
      </Routes>
    </BrowserRouter>
  );
}

 ReactDOM.render(
                                  <App />
                                  ,document.getElementById('root')
                        );
