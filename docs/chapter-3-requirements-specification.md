## 3.1. User Stories {#user-stories}


\scriptsize
\renewcommand{\arraystretch}{1.25}

\begin{longtable}{|p{0.09\textwidth}|p{0.18\textwidth}|p{0.30\textwidth}|p{0.35\textwidth}|}
\hline
\textbf{Story ID} & \textbf{Título} & \textbf{Descripción} & \textbf{Criterios de Aceptación (Gherkin)} \\
\hline
\endfirsthead

\hline
\textbf{Story ID} & \textbf{Título} & \textbf{Descripción} & \textbf{Criterios de Aceptación (Gherkin)} \\
\hline
\endhead

\textbf{EP04} &
\textbf{Gestión de productos e inventario perecible} &
Como empresa distribuidora de productos perecibles o comercio minorista, quiero gestionar productos, lotes, stock y vencimientos, para reducir pérdidas por caducidad, deterioro o mala gestión del inventario. &
\\
\hline

US-19 &
Registro de productos perecibles &
Como encargado de almacén de una empresa distribuidora de productos perecibles, quiero registrar productos con información básica como nombre, categoría, unidad de medida y condiciones de almacenamiento, para mantener un catálogo organizado dentro de FreshKargo. &
\textbf{Escenario 1: Registro exitoso de producto}\newline
\textbf{Dado que} el encargado de almacén está autenticado en la plataforma\newline
\textbf{Cuando} ingresa los datos obligatorios del producto y confirma el registro\newline
\textbf{Entonces} el sistema guarda el producto perecible en el catálogo de inventario.\newline\newline
\textbf{Escenario 2: Registro con datos incompletos}\newline
\textbf{Dado que} el encargado intenta registrar un producto perecible\newline
\textbf{Cuando} deja campos obligatorios vacíos o ingresa datos inválidos\newline
\textbf{Entonces} el sistema muestra mensajes de validación y no guarda el producto.
\\
\hline

US-20 &
Edición de información de productos &
Como administrador de un minimarket, quiero actualizar la información de mis productos perecibles, para mantener correctos los datos de categoría, presentación, unidad de medida y condiciones de conservación. &
\textbf{Escenario 1: Actualización exitosa}\newline
\textbf{Dado que} existe un producto registrado en el sistema\newline
\textbf{Cuando} el administrador modifica datos válidos y guarda los cambios\newline
\textbf{Entonces} el sistema actualiza la información del producto.\newline\newline
\textbf{Escenario 2: Datos inválidos al editar}\newline
\textbf{Dado que} el administrador edita un producto existente\newline
\textbf{Cuando} ingresa información inválida o incompleta\newline
\textbf{Entonces} el sistema muestra mensajes de validación y conserva la información anterior.
\\
\hline

US-21 &
Registro de lotes con fecha de vencimiento &
Como encargado de almacén de una empresa distribuidora de productos perecibles, quiero registrar lotes con fecha de ingreso, fecha de vencimiento y cantidad disponible, para controlar la vida útil de la mercadería almacenada. &
\textbf{Escenario 1: Registro exitoso de lote}\newline
\textbf{Dado que} existe un producto perecible registrado\newline
\textbf{Cuando} el encargado registra un lote con cantidad, fecha de ingreso y fecha de vencimiento válidas\newline
\textbf{Entonces} el sistema asocia el lote al producto y actualiza el stock disponible.\newline\newline
\textbf{Escenario 2: Fecha de vencimiento inválida}\newline
\textbf{Dado que} el encargado intenta registrar un lote\newline
\textbf{Cuando} ingresa una fecha de vencimiento anterior a la fecha de ingreso\newline
\textbf{Entonces} el sistema rechaza el registro y muestra una alerta de validación.
\\
\hline

US-22 &
Consulta de stock disponible &
Como dueño de un minimarket, quiero consultar el stock disponible por producto, para saber qué mercadería puedo vender, reponer o retirar antes de que genere pérdidas. &
\textbf{Escenario 1: Consulta de stock existente}\newline
\textbf{Dado que} existen productos registrados en el inventario\newline
\textbf{Cuando} el dueño del minimarket consulta el stock disponible\newline
\textbf{Entonces} el sistema muestra la cantidad actual por producto y lote.\newline\newline
\textbf{Escenario 2: Producto sin stock}\newline
\textbf{Dado que} un producto registrado no tiene unidades disponibles\newline
\textbf{Cuando} el usuario consulta su disponibilidad\newline
\textbf{Entonces} el sistema muestra el producto como agotado.
\\
\hline

US-23 &
Registro de entradas de inventario &
Como encargado de almacén de una empresa distribuidora, quiero registrar la entrada de nuevos productos o lotes, para mantener actualizado el inventario digital frente al inventario físico. &
\textbf{Escenario 1: Entrada registrada correctamente}\newline
\textbf{Dado que} ingresa nueva mercadería al almacén\newline
\textbf{Cuando} el encargado registra la entrada en FreshKargo\newline
\textbf{Entonces} el sistema incrementa el stock del producto o lote correspondiente.\newline\newline
\textbf{Escenario 2: Entrada con cantidad inválida}\newline
\textbf{Dado que} el encargado registra una entrada de inventario\newline
\textbf{Cuando} ingresa una cantidad menor o igual a cero\newline
\textbf{Entonces} el sistema rechaza la operación y solicita una cantidad válida.
\\
\hline

US-24 &
Registro de salidas de inventario &
Como administrador de un minimarket, quiero registrar salidas de productos por venta, devolución o merma, para mantener actualizado el stock real del negocio. &
\textbf{Escenario 1: Salida registrada correctamente}\newline
\textbf{Dado que} existe stock disponible de un producto o lote\newline
\textbf{Cuando} el administrador registra una salida válida\newline
\textbf{Entonces} el sistema descuenta la cantidad correspondiente del inventario.\newline\newline
\textbf{Escenario 2: Salida sin stock suficiente}\newline
\textbf{Dado que} el administrador intenta registrar una salida\newline
\textbf{Cuando} la cantidad solicitada supera el stock disponible\newline
\textbf{Entonces} el sistema impide la operación e informa que no hay stock suficiente.
\\
\hline

US-25 &
Identificación de productos próximos a vencer &
Como empresa distribuidora de productos perecibles, quiero identificar productos próximos a vencer, para priorizar su salida, promoción o retiro antes de que se conviertan en merma. &
\textbf{Escenario 1: Productos próximos a vencer encontrados}\newline
\textbf{Dado que} existen lotes registrados con fecha de vencimiento cercana\newline
\textbf{Cuando} el usuario revisa la sección de vencimientos\newline
\textbf{Entonces} el sistema muestra los productos próximos a vencer ordenados por fecha.\newline\newline
\textbf{Escenario 2: Sin productos próximos a vencer}\newline
\textbf{Dado que} no existen lotes cercanos a su fecha de vencimiento\newline
\textbf{Cuando} el usuario revisa la sección de vencimientos\newline
\textbf{Entonces} el sistema informa que no hay productos en riesgo de vencimiento.
\\
\hline

\textbf{EP05} &
\textbf{Control de reabastecimiento y proveedores} &
Como empresa distribuidora o comercio minorista, quiero gestionar proveedores y necesidades de reposición, para evitar quiebres de stock, compras innecesarias y retrasos en el abastecimiento. &
\\
\hline

US-26 &
Registro de proveedores &
Como responsable de compras de una empresa distribuidora de productos perecibles, quiero registrar proveedores con sus datos de contacto y productos ofrecidos, para organizar las fuentes de abastecimiento del negocio. &
\textbf{Escenario 1: Registro exitoso de proveedor}\newline
\textbf{Dado que} el responsable de compras necesita agregar un nuevo proveedor\newline
\textbf{Cuando} registra datos válidos como nombre, contacto y tipo de producto\newline
\textbf{Entonces} el sistema guarda al proveedor en la lista de proveedores disponibles.\newline\newline
\textbf{Escenario 2: Registro incompleto}\newline
\textbf{Dado que} el responsable intenta registrar un proveedor\newline
\textbf{Cuando} deja campos obligatorios vacíos\newline
\textbf{Entonces} el sistema muestra mensajes de validación y no guarda el proveedor.
\\
\hline

US-27 &
Edición de datos de proveedores &
Como administrador de un minimarket, quiero actualizar los datos de mis proveedores, para mantener vigente la información de contacto, condiciones de entrega y productos que ofrecen. &
\textbf{Escenario 1: Actualización exitosa}\newline
\textbf{Dado que} existe un proveedor registrado\newline
\textbf{Cuando} el administrador modifica datos válidos y guarda los cambios\newline
\textbf{Entonces} el sistema actualiza la información del proveedor.\newline\newline
\textbf{Escenario 2: Información inválida}\newline
\textbf{Dado que} el administrador edita los datos del proveedor\newline
\textbf{Cuando} ingresa un correo, teléfono o dato obligatorio inválido\newline
\textbf{Entonces} el sistema muestra una advertencia y no aplica los cambios.
\\
\hline

US-28 &
Asociación de productos con proveedores &
Como responsable de compras de una empresa distribuidora, quiero asociar productos perecibles con sus proveedores, para identificar rápidamente a quién solicitar reabastecimiento cuando el stock sea bajo. &
\textbf{Escenario 1: Asociación exitosa}\newline
\textbf{Dado que} existen productos y proveedores registrados\newline
\textbf{Cuando} el responsable asocia un producto con uno o más proveedores\newline
\textbf{Entonces} el sistema guarda la relación entre producto y proveedor.\newline\newline
\textbf{Escenario 2: Producto o proveedor inexistente}\newline
\textbf{Dado que} el responsable intenta crear una asociación\newline
\textbf{Cuando} el producto o proveedor seleccionado no existe\newline
\textbf{Entonces} el sistema impide la asociación y muestra un mensaje de error.
\\
\hline

US-29 &
Visualización de productos con stock bajo &
Como dueño de un minimarket, quiero visualizar productos con stock bajo, para planificar compras antes de quedarme sin mercadería disponible para la venta. &
\textbf{Escenario 1: Productos con stock bajo}\newline
\textbf{Dado que} existen productos con stock mínimo definido\newline
\textbf{Cuando} el stock disponible cae por debajo del límite establecido\newline
\textbf{Entonces} el sistema muestra el producto en la lista de reabastecimiento sugerido.\newline\newline
\textbf{Escenario 2: Sin productos para reabastecer}\newline
\textbf{Dado que} todos los productos tienen stock suficiente\newline
\textbf{Cuando} el usuario revisa la sección de reabastecimiento\newline
\textbf{Entonces} el sistema informa que no existen productos pendientes de reposición.
\\
\hline

US-30 &
Generación de solicitud de reabastecimiento &
Como responsable de compras de una empresa distribuidora, quiero generar solicitudes de reabastecimiento para productos con stock bajo, para iniciar el proceso de compra con el proveedor correspondiente. &
\textbf{Escenario 1: Solicitud generada correctamente}\newline
\textbf{Dado que} existe un producto con stock bajo y proveedor asociado\newline
\textbf{Cuando} el responsable genera una solicitud de reabastecimiento\newline
\textbf{Entonces} el sistema crea la solicitud con producto, cantidad sugerida y proveedor seleccionado.\newline\newline
\textbf{Escenario 2: Producto sin proveedor asociado}\newline
\textbf{Dado que} un producto requiere reabastecimiento\newline
\textbf{Cuando} no tiene proveedor asociado\newline
\textbf{Entonces} el sistema advierte que debe asignarse un proveedor antes de generar la solicitud.
\\
\hline

US-31 &
Consulta de historial de reabastecimiento &
Como administrador de negocio, quiero consultar el historial de solicitudes de reabastecimiento, para revisar compras anteriores y evaluar la frecuencia de reposición de productos. &
\textbf{Escenario 1: Historial disponible}\newline
\textbf{Dado que} existen solicitudes de reabastecimiento registradas\newline
\textbf{Cuando} el administrador consulta el historial\newline
\textbf{Entonces} el sistema muestra las solicitudes realizadas con fecha, producto, cantidad y proveedor.\newline\newline
\textbf{Escenario 2: Sin historial registrado}\newline
\textbf{Dado que} no existen solicitudes previas\newline
\textbf{Cuando} el administrador consulta el historial\newline
\textbf{Entonces} el sistema muestra un mensaje indicando que aún no hay registros.
\\
\hline

US-32 &
Priorización de productos para reabastecimiento &
Como comercio minorista, quiero priorizar los productos que deben reabastecerse según stock bajo y demanda reciente, para comprar primero la mercadería más necesaria. &
\textbf{Escenario 1: Priorización generada correctamente}\newline
\textbf{Dado que} existen productos con distintos niveles de stock y movimiento de salida\newline
\textbf{Cuando} el usuario revisa la prioridad de reabastecimiento\newline
\textbf{Entonces} el sistema muestra primero los productos con mayor necesidad de reposición.\newline\newline
\textbf{Escenario 2: Datos insuficientes para priorizar}\newline
\textbf{Dado que} no existen movimientos de inventario registrados\newline
\textbf{Cuando} el usuario revisa la prioridad de reabastecimiento\newline
\textbf{Entonces} el sistema muestra la priorización solo en función del stock disponible.
\\
\hline

\textbf{EP06} &
\textbf{Gestión de carga y despacho} &
Como empresa distribuidora de productos perecibles, quiero organizar la carga y el despacho de mercadería, para preparar entregas ordenadas, reducir errores operativos y asegurar una distribución eficiente. &
\\
\hline

US-33 &
Creación de orden de despacho &
Como jefe de operaciones logísticas de una empresa distribuidora de productos perecibles, quiero crear órdenes de despacho asociando productos, lotes, cantidades y destino, para organizar la salida de mercadería desde el almacén. &
\textbf{Escenario 1: Creación exitosa de despacho}\newline
\textbf{Dado que} existen productos y lotes disponibles en inventario\newline
\textbf{Cuando} el jefe de operaciones registra una orden con destino, productos y cantidades válidas\newline
\textbf{Entonces} el sistema crea la orden de despacho y reserva las cantidades correspondientes.\newline\newline
\textbf{Escenario 2: Cantidad no disponible}\newline
\textbf{Dado que} el usuario intenta crear una orden de despacho\newline
\textbf{Cuando} la cantidad solicitada supera el stock disponible\newline
\textbf{Entonces} el sistema impide la creación del despacho e informa la falta de stock.
\\
\hline

US-34 &
Selección de lotes para despacho &
Como encargado de almacén de una empresa distribuidora, quiero seleccionar los lotes que serán enviados en un despacho, para priorizar productos próximos a vencer y reducir pérdidas por caducidad. &
\textbf{Escenario 1: Selección de lote válida}\newline
\textbf{Dado que} existen lotes disponibles para un producto\newline
\textbf{Cuando} el usuario selecciona los lotes para el despacho\newline
\textbf{Entonces} el sistema registra los lotes seleccionados en la orden.\newline\newline
\textbf{Escenario 2: Lote no disponible}\newline
\textbf{Dado que} el usuario intenta seleccionar un lote\newline
\textbf{Cuando} el lote no tiene stock disponible o está vencido\newline
\textbf{Entonces} el sistema impide seleccionarlo para el despacho.
\\
\hline

US-36 &
Asignación de carga para distribución &
Como responsable de despacho de una empresa distribuidora, quiero asignar productos y lotes a una carga de distribución, para preparar correctamente la mercadería antes de su salida del almacén. &
\textbf{Escenario 1: Asignación correcta de carga}\newline
\textbf{Dado que} existe una orden de despacho registrada\newline
\textbf{Cuando} el usuario asigna productos, lotes y cantidades a la carga correspondiente\newline
\textbf{Entonces} el sistema registra la carga y la deja lista para distribución.\newline\newline
\textbf{Escenario 2: Carga incompleta}\newline
\textbf{Dado que} el usuario intenta confirmar una carga\newline
\textbf{Cuando} faltan productos, lotes o cantidades obligatorias\newline
\textbf{Entonces} el sistema muestra una alerta e impide confirmar la carga.
\\
\hline

US-37 &
Asignación de responsable de despacho &
Como jefe de operaciones logísticas de una empresa distribuidora, quiero asignar un responsable a cada despacho, para tener trazabilidad interna sobre quién prepara y supervisa la salida de productos. &
\textbf{Escenario 1: Responsable asignado correctamente}\newline
\textbf{Dado que} existe una orden de despacho pendiente\newline
\textbf{Cuando} el jefe de operaciones asigna un responsable disponible\newline
\textbf{Entonces} el sistema registra al responsable asociado al despacho.\newline\newline
\textbf{Escenario 2: Responsable no disponible}\newline
\textbf{Dado que} el usuario intenta asignar un responsable\newline
\textbf{Cuando} el responsable no está disponible o no tiene permisos\newline
\textbf{Entonces} el sistema muestra un mensaje de restricción.
\\
\hline

US-38 &
Confirmación de salida de carga &
Como responsable de despacho de una empresa distribuidora, quiero confirmar la salida de una carga, para registrar oficialmente que los productos salieron del almacén hacia su destino. &
\textbf{Escenario 1: Salida confirmada}\newline
\textbf{Dado que} una carga está completa y validada\newline
\textbf{Cuando} el responsable confirma la salida\newline
\textbf{Entonces} el sistema cambia el estado del despacho a “en distribución”.\newline\newline
\textbf{Escenario 2: Carga no validada}\newline
\textbf{Dado que} una carga tiene información incompleta\newline
\textbf{Cuando} el usuario intenta confirmar la salida\newline
\textbf{Entonces} el sistema bloquea la confirmación hasta completar la validación.
\\
\hline

US-39 &
Consulta de estado de preparación de despacho &
Como jefe de operaciones logísticas de una empresa distribuidora, quiero consultar el estado de preparación de cada despacho, para saber si una carga está pendiente, completa o lista para salir. &
\textbf{Escenario 1: Consulta de estado disponible}\newline
\textbf{Dado que} existen órdenes de despacho registradas\newline
\textbf{Cuando} el usuario consulta el estado de preparación\newline
\textbf{Entonces} el sistema muestra si el despacho está pendiente, en preparación o listo para salir.\newline\newline
\textbf{Escenario 2: Despacho no encontrado}\newline
\textbf{Dado que} el usuario busca un despacho específico\newline
\textbf{Cuando} el código o filtro ingresado no coincide con ningún registro\newline
\textbf{Entonces} el sistema informa que no se encontraron resultados.
\\
\hline

US-40 &
Validación de productos antes del despacho &
Como responsable de despacho de una empresa distribuidora, quiero validar los productos antes de su salida, para confirmar que las cantidades, lotes y condiciones coinciden con la orden de despacho. &
\textbf{Escenario 1: Validación exitosa de despacho}\newline
\textbf{Dado que} una carga fue preparada para distribución\newline
\textbf{Cuando} el responsable valida productos, lotes y cantidades contra la orden\newline
\textbf{Entonces} el sistema marca el despacho como validado y listo para salir.\newline\newline
\textbf{Escenario 2: Diferencia entre carga y orden}\newline
\textbf{Dado que} una carga contiene diferencias en productos, lotes o cantidades\newline
\textbf{Cuando} el responsable intenta validar el despacho\newline
\textbf{Entonces} el sistema muestra las diferencias encontradas y bloquea la salida hasta corregirlas.
\\
\hline

\end{longtable}

