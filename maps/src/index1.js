import React from 'react';
import ReactDOM from 'react-dom';
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Test from "./pages/test";
import Lowmediangas1 from "./pages/lowmediangas1";
import './index.css';
import axios from 'axios';
import { BarChart, Bar, Cell, XAxis, YAxis, CartesianGrid, Tooltip, Legend, ResponsiveContainer } from 'recharts';
import { MapContainer, TileLayer, Marker, Popup } from 'react-leaflet'

export default function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Test />}>
          <Route path="test" element={<Test />} />
          <Route path="lowmediangas1" element={<Lowmediangas1 />} />
        </Route>
      </Routes>
    </BrowserRouter>
  );
}

ReactDOM.render(<App />,document.getElementById('root'));

