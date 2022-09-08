import React, { PureComponent } from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import axios from 'axios';
import { BarChart, Bar, Cell, XAxis, YAxis, CartesianGrid, Tooltip, Legend, ResponsiveContainer } from 'recharts';
import { MapContainer, TileLayer, Marker, Popup } from 'react-leaflet'
import { useParams } from 'react-router-dom';
const Pcode = () => {
const position=[51.505, -0.09]
const {id}=useParams();

        ReactDOM.render(
                                  <h1>10 Lowest Median Gas usage by post code</h1>
                                  ,document.getElementById('head1')
                        );


let jsonstr= async() => {
                var x= await axios({url: process.env.REACT_APP_APIADD + '/api/getpcode/' + id });
                  return x.data;

}
const TEST = jsonstr().then((data)=> {
	const vals = [];

    	for (let i = 0; i < data.length; i++) {
                vals.push('{"name": "' + data[i].pcode + ' - '  + data[i].city + '", "median electricity": ' + data[i].medelec + ',"mean electricity": ' + data[i].meanelec + ',"consumed electricity": ' + data[i].conelec + ',"mean gas": ' + data[i].meangas + ',"median gas": ' + data[i].medgas + ',"consumed gas": ' + data[i].congas + '}');
    	}
        var vals1='[' + vals.toString() + ']';
        const val2 = JSON.parse(vals1);

    ReactDOM.render(
        <BarChart
          width={1900}
          height={400}
          data={val2}
          margin={{
            top: 25,
            right: 30,
            left: 20,
            bottom: 5,
          }}
        >
          <CartesianGrid strokeDasharray="3 3" />
          <XAxis dataKey="name" />
          <YAxis />
          <Tooltip />
          <Legend />
          <Bar dataKey="median electricity" fill="#3498db" />
          <Bar dataKey="mean electricity" fill="#ff0000" />
	  <Bar dataKey="consumed electricity" fill="#33cc33" />
          <Bar dataKey="median gas" fill="#ffcc00" />
          <Bar dataKey="mean gas" fill="#cc3300" />
          <Bar dataKey="consumed gas" fill="#cc00cc" />
        </BarChart>
                                  ,document.getElementById('root1')
                        );


});

const API_ROUTE = jsonstr().then((data)=> {
        ReactDOM.render(
                                  <React.StrictMode>
                 <MapContainer center={position} zoom={5} scrollWheelZoom={true}>
                            <TileLayer
                              attribution='&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
                              url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
                            />
                 {data.length > 0 &&
                                                                   data.map((marker) => (

                            <Marker position={[marker.long,marker.lat]}>
                              <Popup>
                                                                           {marker.pcode + " - " + marker.city }
                              </Popup>
                            </Marker>
                                                                                                    ))}
                          </MapContainer>
                                  </React.StrictMode>,
                                  document.getElementById('root')
                        );

});
};
export default Pcode;

