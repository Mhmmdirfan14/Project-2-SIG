@extends('template_frontend')
    @section('content')
 
    
    <div class="card mx-auto mt-3 align-items-center" style="width: 70rem;">
        <div class="card-body">
          <h5 class="card-title">SEMUA DATA VERSI MAPS</h5>
          <hr>
          <div id="map">
          </div>
        </div>
    </div>
      

    <script>
    
        var map = L.map("map").setView([-6.4025, 106.7942], 14);
  
        L.tileLayer("https://tile.openstreetmap.org/{z}/{x}/{y}.png", {
          maxZoom: 19,
          attribution:
            '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>',
        }).addTo(map);
  
        var aoi = {
            "type": "FeatureCollection",
            "features": [
        {
            "type": "Feature",
            "properties": {
                "nama": "SDN Anyelir 1",
                "alamat": "Jl. Nusantara Raya No 241 Rt 01 Rw 06",
                "kelurahan": "Depok Jaya"
            },
            "geometry": {
                "coordinates": [
                    106.81462567427269,
                    -6.393150417170929
                ],
                "type": "Point"
            },
            "id": 0
        },
        {
            "type": "Feature",
            "properties": {
                "nama ": "SDN Anyelir 2",
                "alamat": "Jl. Anyelir Raya No.67",
                "kelurahan": "Depok Jaya",
                "nama": "SDN Anyelir 2"
            },
            "geometry": {
                "coordinates": [
                    106.81548326792483,
                    -6.3926675539151745
                ],
                "type": "Point"
            },
            "id": 1
        },
        {
            "type": "Feature",
            "properties": {
                "nama": "SD Negeri Beji 1",
                "alamat": "Jl. Arief Rahman Hakim No.4, Kota Depok, Jawa Barat 16432, Indonesia",
                "kelurahan": "Depok Jaya"
            },
            "geometry": {
                "coordinates": [
                    106.8132269481024,
                    -6.389250832715575
                ],
                "type": "Point"
            },
            "id": 2
        },
        {
            "type": "Feature",
            "properties": {
                "nama": "SD Negeri 1",
                "alamat": "Jl Pemuda No 76",
                "kelurahan": "Depok"
            },
            "geometry": {
                "coordinates": [
                    106.82561619535255,
                    -6.402758968469186
                ],
                "type": "Point"
            },
            "id": 3
        },
        {
            "type": "Feature",
            "properties": {
                "nama": "SD Negeri Depok 02",
                "alamat": "Jl. Stasiun No 4 Depok",
                "kelurahan": "Depok"
            },
            "geometry": {
                "coordinates": [
                    106.81836576210651,
                    -6.405628696520665
                ],
                "type": "Point"
            },
            "id": 4
        },
        {
            "type": "Feature",
            "properties": {
                "nama": "SD Negeri Depok 04",
                "alamat": "Jl Stasiun No 4",
                "kelurahan": "Depok"
            },
            "geometry": {
                "coordinates": [
                    106.81789035301398,
                    -6.4059170118842985
                ],
                "type": "Point"
            },
            "id": 5
        },
        {
            "type": "Feature",
            "properties": {
                "nama": "SD Negeri Depok 05",
                "alamat": "Jl. Pemuda No. 31",
                "kelurahan": "Depok"
            },
            "geometry": {
                "coordinates": [
                    106.82240949560298,
                    -6.402497541092785
                ],
                "type": "Point"
            },
            "id": 6
        },
        {
            "type": "Feature",
            "properties": {
                "nama": "SD Negeri Depok VI",
                "alamat": "Jl Parung Belimbing Sentral",
                "kelurahan": "Depok"
            },
            "geometry": {
                "coordinates": [
                    106.81737735181656,
                    -6.406518627560075
                ],
                "type": "Point"
            },
            "id": 7
        },
        {
            "type": "Feature",
            "properties": {
                "nama": "SD Negeri Depok Baru 1",
                "alamat": "Jl. Semangka 7 Rt.01 Rw.02",
                "kelurahan": "Depok Jaya"
            },
            "geometry": {
                "coordinates": [
                    106.8093217607244,
                    -6.39593019345044
                ],
                "type": "Point"
            },
            "id": 8
        },
        {
            "type": "Feature",
            "properties": {
                "nama": "SD Negeri Depok Baru 2",
                "alamat": "Jl. Merpati Raya",
                "kelurahan": "Depok Jaya"
            },
            "geometry": {
                "coordinates": [
                    106.8098234665548,
                    -6.390048409738881
                ],
                "type": "Point"
            },
            "id": 9
        },
        {
            "type": "Feature",
            "properties": {
                "nama": "SD Negeri Depok Baru 3",
                "alamat": "Jl Semangka 7",
                "kelurahan": "Depok Jaya"
            },
            "geometry": {
                "coordinates": [
                    106.8086585938874,
                    -6.39617560283979
                ],
                "type": "Point"
            },
            "id": 10
        },
        {
            "type": "Feature",
            "properties": {
                "nama": "SD NEGERI DEPOK BARU 8",
                "alamat": "Jl. Mawar Raya No.1",
                "kelurahan": "Depok Jaya"
            },
            "geometry": {
                "coordinates": [
                    106.81032164032365,
                    -6.391360353444469
                ],
                "type": "Point"
            },
            "id": 11
        },
        {
            "type": "Feature",
            "properties": {
                "nama": "SD NEGERI DEPOK JAYA 1",
                "alamat": "Jl Nusantara Raya No 318",
                "kelurahan": "Depok Jaya"
            },
            "geometry": {
                "coordinates": [
                    106.8146600073432,
                    -6.3947757959126506
                ],
                "type": "Point"
            },
            "id": 12
        },
        {
            "type": "Feature",
            "properties": {
                "nama": "SD NEGERI MAMPANG 1",
                "alamat": "Jl. Pramuka 1 No.5",
                "kelurahan": "Mampang"
            },
            "geometry": {
                "coordinates": [
                    106.79514723923143,
                    -6.390324705371185
                ],
                "type": "Point"
            },
            "id": 13
        },
        {
            "type": "Feature",
            "properties": {
                "nama": "SDN Mampang 2",
                "alamat": "Jl. Damai No.25",
                "kelurahan": "Mampang"
            },
            "geometry": {
                "coordinates": [
                    106.79882218461216,
                    -6.389901268602799
                ],
                "type": "Point"
            },
            "id": 14
        },
        {
            "type": "Feature",
            "properties": {
                "nama": "SDN Mampang 3",
                "alamat": "Jl Damai I No 8 Rt.3/12",
                "kelurahan": "Mampang"
            },
            "geometry": {
                "coordinates": [
                    106.79556344472775,
                    -6.3901110378336625
                ],
                "type": "Point"
            },
            "id": 15
        },
        {
            "type": "Feature",
            "properties": {
                "nama": "SD NEGERI PANCORANMAS 1",
                "alamat": "Jl.Kembang Lio no.7 Depok",
                "kelurahan": "Depok"
            },
            "geometry": {
                "coordinates": [
                    106.81775924036913,
                    -6.39027458062003
                ],
                "type": "Point"
            },
            "id": 16
        },
        {
            "type": "Feature",
            "properties": {
                "nama": "SD NEGERI PANCORANMAS 3",
                "alamat": "Jl. Cagar Alam Rt/rw : 06/18",
                "kelurahan": "Pancoran Mas"
            },
            "geometry": {
                "coordinates": [
                    106.81033477596242,
                    -6.403162904033508
                ],
                "type": "Point"
            },
            "id": 17
        },
        {
            "type": "Feature",
            "properties": {
                "nama": "SD NEGERI PARUNG BINGUNG 1SD NEGERI PARUNG BINGUNG 1",
                "alamat": "Jl H Muhasim No. 69",
                "kelurahan": "Rangkapan Jaya Baru"
            },
            "geometry": {
                "coordinates": [
                    106.76863689607927,
                    -6.388705026218773
                ],
                "type": "Point"
            },
            "id": 18
        },
        {
            "type": "Feature",
            "properties": {
                "nama": "SD NEGERI PITARA 2",
                "alamat": "Jl Pitara Raya No 165",
                "kelurahan": "Pancoran Mas"
            },
            "geometry": {
                "coordinates": [
                    106.80374939563569,
                    -6.407939823856239
                ],
                "type": "Point"
            },
            "id": 20
        },
        {
            "type": "Feature",
            "properties": {
                "kelurahan": "Pancoran Mas",
                "alamat": "Jl. Hj. Idah No.67 Rt.04/16",
                "nama": "SD NEGERI PITARA 1"
            },
            "geometry": {
                "coordinates": [
                    106.80512823659114,
                    -6.408832425852879
                ],
                "type": "Point"
            },
            "id": 21
        },
        {
            "type": "Feature",
            "properties": {
                "nama": "SD NEGERI RANGKAPAN JAYA BARU",
                "alamat": "JLN RAYA KOMPLEK ARCO",
                "kelurahan": "Rangkapan Jaya Baru"
            },
            "geometry": {
                "coordinates": [
                    106.77985143006083,
                    -6.397575245918688
                ],
                "type": "Point"
            },
            "id": 21
        },
        {
            "type": "Feature",
            "properties": {
                "nama": "SD NEGERI RANGKAPANJAYA",
                "alamat": "Jl. Caringin RT 05 RW 04 No. 2 Kel. Rangkapanjaya Kec. Pancoranmas Kota Depok",
                "kelurahan": "Rangkapan Jaya"
            },
            "geometry": {
                "coordinates": [
                    106.79128489446015,
                    -6.39472269269406
                ],
                "type": "Point"
            },
            "id": 22
        },
        {
            "type": "Feature",
            "properties": {
                "nama": "SD NEGERI RAWADENOK",
                "alamat": "Jl. Keadilan Rt. 08/01",
                "kelurahan": "Rangkapan Jaya Baru"
            },
            "geometry": {
                "coordinates": [
                    106.79264976968466,
                    -6.413654174183463
                ],
                "type": "Point"
            },
            "id": 23
        }
    ]
        };
  
        var geojson = L.geoJSON(aoi, {
          onEachFeature: function (feature, layer) {
            layer.bindPopup(
              feature.properties.nama  + "<br/>" + feature.properties.alamat + "<br/>" + feature.properties.kelurahan
            );
          },
        }).addTo(map);
      </script>
  
@endsection
