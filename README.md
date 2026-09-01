# SAP RAP Service Request Management

A simple **Service Request Management application** built using the **SAP ABAP RESTful Application Programming Model (RAP)**.

This project demonstrates the basic development flow of a managed RAP application, from creating the CDS data model to exposing the application as a service and previewing it with SAP Fiori Elements.

---

## 📌 Project Overview

The Service Request Management application allows service requests to be managed through a RAP-based business object.

The project follows the standard RAP architecture:

```text
Database Table
      ↓
Interface CDS View
      ↓
Behavior Definition
      ↓
Behavior Implementation
      ↓
Projection CDS View
      ↓
Projection Behavior
      ↓
Service Definition
      ↓
Service Binding
      ↓
SAP Fiori Elements Preview
```

---

## 🛠️ Technologies Used

* SAP ABAP
* SAP ABAP RESTful Application Programming Model (RAP)
* Core Data Services (CDS)
* Managed Behavior Implementation
* ABAP Development Tools (ADT)
* Eclipse
* SAP Fiori Elements

---

## 📂 Project Components

### 1. Database Table

The application uses the database table:

```text
ZSRM_REQUEST
```

The table stores the service request data used by the RAP business object.

---

### 2. Interface CDS View

The interface view represents the core business object.

**CDS View Name:**

```text
ZI_SR_REQUEST
```

It is defined as a **Root View Entity** and reads data from the service request database table.

The main fields include:

* Request ID
* Requester
* Priority
* Description
* Status
* Created By
* Created At
* Last Changed By
* Last Changed At

---

### 3. Behavior Definition

The project uses a **Managed RAP Behavior Definition**.

The business object supports the following operations:

* Create
* Update
* Delete

The `RequestId` field is configured as read-only.

**Behavior Implementation Class:**

```text
ZBP_I_SR_REQUEST
```

---

### 4. Behavior Pool

The behavior pool is generated automatically from the RAP Behavior Definition.

**Class Name:**

```text
ZBP_I_SR_REQUEST
```

This class is responsible for the behavior implementation of the RAP business object.

---

### 5. Projection CDS View

The projection view exposes the business object for consumption.

**Projection View:**

```text
ZC_SR_REQUEST
```

The projection is based on:

```text
ZI_SR_REQUEST
```

It uses the RAP transactional query provider contract.

---

### 6. Projection Behavior Definition

A projection behavior definition is created for:

```text
ZC_SR_REQUEST
```

This connects the consumption layer with the behavior defined in the interface layer.

---

### 7. Service Definition

The RAP business object is exposed through a Service Definition.

**Service Name:**

```text
ZUI_SR_REQUEST
```

The service exposes the projection view:

```text
ZC_SR_REQUEST
```

as:

```text
ServiceRequest
```

---

### 8. Service Binding

A Service Binding is created to publish and consume the RAP service.

After activation, the service can be previewed using the generated SAP Fiori Elements application.

---



## 🔄 Development Flow

The following steps were followed to build this application:

### Step 1: Create Package

Create an ABAP package to organize all RAP development objects.

### Step 2: Create Database Table

Create the database table to store service request information.

### Step 3: Create Interface CDS View

Create the root CDS View Entity:

```text
ZI_SR_REQUEST
```

This serves as the interface layer of the RAP business object.

### Step 4: Create Behavior Definition

Create a managed behavior definition for the interface CDS view.

Supported operations:

```text
Create
Update
Delete
```

### Step 5: Create Behavior Implementation

Generate the behavior pool:

```text
ZBP_I_SR_REQUEST
```

using ADT.

### Step 6: Create Projection CDS View

Create the projection view:

```text
ZC_SR_REQUEST
```

based on the interface CDS view.

### Step 7: Create Projection Behavior

Create the projection behavior definition for the consumption layer.

### Step 8: Create Service Definition

Create and expose the RAP service:

```text
ZUI_SR_REQUEST
```

### Step 9: Create Service Binding

Create and activate the Service Binding.

### Step 10: Preview the Application

After activation, preview the generated SAP Fiori Elements application.

---







## 📚 Key Learning Outcomes

This project helped demonstrate:

* SAP RAP application architecture
* CDS Root View Entities
* Managed Behavior Definitions
* Behavior Pool generation
* Projection Views
* Projection Behavior Definitions
* Service Definitions
* Service Bindings
* SAP Fiori Elements preview

---





