import React, { PureComponent } from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import axios from 'axios';
import { BarChart, Bar, Cell, XAxis, YAxis, CartesianGrid, Legend, ResponsiveContainer } from 'recharts';
import { MapContainer, TileLayer, Marker, Popup, CircleMarker, Tooltip } from 'react-leaflet'
const position=[51.505, -0.09]

        ReactDOM.render(
                                  <h1>10 Lowest Median Gas usage by post code</h1>
                                  ,document.getElementById('head1')
                        );


let jsonstr= async() => {
                var x= await axios({url: process.env.REACT_APP_APIADD + '/api/mediangaslow'});
                  return x.data;

}
export const TEST = jsonstr().then((data)=> {
	const vals = [];

    	for (let i = 0; i < data.length; i++) {
        	vals.push('{"name": "' + data[i].pcode + ' - '  +  data[i].median  + '", "median' + i + '": ' + data[i].median + '}');
    	}
        var vals1='[' + vals.toString() + ']';
        const val2 = JSON.parse(vals1);

 ReactDOM.render(<h1>{vals[0]}</h1>,document.getElementById('bottom1'));

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
          <XAxis dataKey="name" stroke="#8884d8" />
          <YAxis />
          <Tooltip />
          <Legend />
          <Bar dataKey="median0" fill="#3498db"/>
          <Bar dataKey="median1" fill="#ff0000"/>
          <Bar dataKey="median2" fill="#ff9900"/>
          <Bar dataKey="median3" fill="#33ccff"/>
          <Bar dataKey="median4" fill="#cccc00"/>
          <Bar dataKey="median5" fill="#cccc00"/>
          <Bar dataKey="median6" fill="#cccc00"/>
          <Bar dataKey="median7" fill="#666699"/>
          <Bar dataKey="median8" fill="#000066"/>
          <Bar dataKey="median9" fill="#006666"/>

        </BarChart>
                                  ,document.getElementById('root1')
                        );


});

export const API_ROUTE = jsonstr().then((data)=> {
        const vals3 = [];
        const colrs = [];
        colrs[0]="#3498db";
        colrs[1]="#ff0000";
        colrs[2]="#ff9900";
        colrs[3]="#33ccff";
        colrs[4]="cccc00";
        colrs[5]="#cccc00";
        colrs[6]="#cccc00";
        colrs[7]="#666699";
        colrs[8]="#000066";
        colrs[9]="#006666";
        colrs[10]="#006666";
        colrs[11]="#006666";
        colrs[12]="#006666";
        colrs[13]="#006666";
        colrs[14]="#006666";
        colrs[15]="#006666";
        colrs[16]="#006666";
        colrs[17]="#006666";
        colrs[18]="#006666";
        colrs[19]="#006666";

        for (let i = 0; i < data.length; i++) {
                vals3.push('{"long": ' + data[i].long + ', "lat": ' + data[i].lat + ', "median": ' + data[i].median + ', "col": "' + colrs[i] + '", "pcode": "' + data[i].pcode + '"}');
        }
        var vals4='[' + vals3.toString() + ']';
        const val5 = JSON.parse(vals4);


        ReactDOM.render(
                                  <React.StrictMode>
                 <MapContainer center={position} zoom={6} scrollWheelZoom={true}>
                            <TileLayer
                              attribution='&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
                              url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
                            />
                 {val5.length > 0 &&
                                                                   val5.map((marker) => (

                             <CircleMarker
      center={[marker.long,marker.lat]}
      pathOptions={{color: marker.col}}
      radius={20}>
      <Tooltip>{marker.pcode + " - " + marker.median}</Tooltip>
    </CircleMarker>
                                                                                                    ))}
                          </MapContainer>
                                  </React.StrictMode>,
                                  document.getElementById('root')
                        );

});


