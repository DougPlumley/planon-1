# Maintenance Terms

## Maintenance Terminology

| Current Term | New Term | Comment |
| :--- | :--- | :--- |
| `Work Order` | `Order` |  |
| `Service Request` |  | In the current system, when a request is made, it is referred to as a 'Service Request'.  When it's approved and scheduled, it's converted to a Work Order.  This is represented by a single transaction, but there are attributes that specifically refer to the state of the record when it's in it's 'Service Request' phase vs it's 'Work Order' phase. |
| `WO Number` | `Order Number` | In Planon, all Order Business Objects share the same Order Number sequence. |
| `Request Number` |  |  |
| `Parent Work Order Number` | `Parent Level` | Parent object may be any object such as a Request, another Work Order, Reservation, etc. |
| `Project Number` | `Project Code` | "Regular Project" as opposed to "Capital Project".  This is a unique maintenance project \(non-capital project\) identifier |
| `Project Phase` | `Project Item (Activity) or WBS Item` | Project Items are either Activities or Milestones. Phases of a project where each one is related to a Work Order. |
| `Work Order Description` | `Order Description` | The title or a short descriptoin of a Work Order |
| `Requester` | `Requestor` | Internal requestors are a Personnel type. The person requesting services. |
| `Alternate Requester` | `External Requestor` | External requestors are added ad hoc and not tied to the Personnel TSI.  An alternate contact for a Work Order. |
| `Assigned To` | `Internal Tradesperson` | Technician work is assigned to |
| `Craft` | `Trade` | Skill |
| `Crew` | `Crew, Maintenance Team` | A "Crew" is organization or supervisory unit associated with Trades Personnel. A "maintenance team" is resource planning group of workers eligible to be assigned to work on a work order. |
| `Maintenance Type` | `Order Group` | An "Order Group" is a hierarchical service group associated with a work order.  It can refer to a crew or a category of work. |
| `Method` | `External Tradeperson or Contract Line` | No true equivalent. "Contract Line" will show the contract ID. External Tradesperson will show the Contracting Supplier. |
| `Outage Class` | \`\` |  |
| `Department` | `Department` |  |
| `Priority` | `Priority` |  |
| `Request Status` | `Request Status` | A Planon Work Order does not require a Service Request. |
| `Work Order Status` | `Order Status` |  |
| `Request Date` | `Reported On Date` | Date the service was requested |
| `Schedule Date` | `Date Accepted` |  |
| `Start Date` | `Planning Start Date` |  |
| `Due Date` | `Planning End Date` |  |
| `Completion Date` | `Technically Completed On Date` |  |
| `Close Date` | `Administratively Completed On Date` |  |
| `Closed By` |  | Not Defined |
| `Preventive Maintenance Flag` | `Standard PPM Order` |  |
| `Equipment` | `Assets` |  |
| `Equipment Warranty Date` | `Warranty Expires On` |  |
| `Child Work Orders` | `Sub-orders` | Sub-orders can be any order type, such as a Work Order, a PO, a Product Requisition, etc. |
| `Task List` | `Questionnaire` |  |

## 

