//Todos los clientes
db.clients.find()

//update por nemonic
                    
db.clients.updateOne(
    { 
        "estbMnemonic": "MF",
        "channels.email.campaigns.nemonic": "001-SOLICITUD-FIRMA-USER"
    },
    { 
        $set: { 
            "channels.email.campaigns.$.message": "subject¦MercadoFin: [Solicitud #_idSolicitud] ¡Tu solicitud de firma electrónica está en proceso!|title¦Mercado Fin|sender¦no-reply@firmasegura.digital|type¦envio_credito|body¦<body style='font-family: Arial, sans-serif; margin: 0; padding: 0; color: #333333;'><div style='width: 100%; padding: 20px;'> <div><img src='https://dev.mercadofin.com:18080/ipfs/QmNVU4fo7hiFHCt7suaZZ1edgJ5iASDf5QYQVUvBQ2n5op' alt='imagen' style='max-width: 100%; height: auto;'></div><div style='font-size: 20px; margin-top: 20px; font-weight: 600; '>¡Tu solicitud para _transaction ha sido enviada!</div> <div style='margin-top: 20px;'> <p>La solicitud para la generación de tu firma <b>electrónica P12</b> ha sido enviada y está en proceso. Para completar este trámite, en breve recibirás un <b>mensaje con el link de pago para tarjeta de crédito o débito.</b></p> <p>📌 <b>Detalles de la solicitud:</b> <br> <ul><li><b>Número de solicitud:</b> #_idSolicitud</li> <li><b>Estado actual:</b> Pendiente de pago</li> <li><b>Tipo de firma:</b> Digital P12</li></ul></p> <p> 📌 <b>Próximos pasos:</b> <br> <ul><li>⿡ Revisa tu bandeja de entrada en las próximas horas para recibir el mensaje con el link de pago.</li> <li>⿢ Accede al enlace y completa el pago con tarjeta de crédito o débito.</li> <li>⿣ Una vez confirmado el pago, recibirás una notificación cuando tu firma electrónica esté lista para su uso.</li></ul></p>  <p>📩 <b>¿Necesitas ayuda?</b> <br><br> Si tienes dudas o necesitas asistencia, contáctanos en <a href='mailto:soporte@mercadofin.com'>soporte@mercadofin.com</a>.</p></div> <div style='margin-top: 20px; font-size: 14px;'>Saludos, <br><br> El equipo de <b>MercadoFin</b></div> </div></body>"
        }
    }
)

//Fitro por nemonic
db.clients.findOne(
    { 
        "estbMnemonic": "MF",
        "channels.email.campaigns.nemonic": "001-SOLICITUD-FIRMA-USER"
    },
    { 
        "channels.email.campaigns.$": 1, 
        "_id": 0 
    }
)