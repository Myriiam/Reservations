  const apiURL = 'https://www.theatre-contemporain.net/api/spectacles/Le-Plancher-des-vaches?k=dee4c5c9819495b5edd5cd82fd10b4d8f6267b32';
  const options = {
      'method': 'GET',
      'headers': {
        'content-type': 'application/json; charset=utf-8',
    }
  };

  fetch(apiURL, options).then(function(response) {
      if(response.ok) {
          response.json().then(function(data){
              console.log(data);
          });
      }
  });