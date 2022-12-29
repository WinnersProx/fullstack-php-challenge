import * as React from "react";

import { useReport } from "./hooks/useReport";

export default function ReportsView() {
  const { reports, isUpdating, handleUpdate } = useReport();

  return (
    <div className="reports-block">
      <table>
        <thead>
          <th></th>
          <th></th>
          <th></th>
        </thead>
        <tbody>
          {reports.map((item, index) => (
            <tr key={index} className="block">
              <td>
                <div>
                  <span className="font-bolder">Id:</span>
                  {item.id}
                </div>
                <div>
                  <span className="font-bolder">State:</span>
                  {item.state}
                </div>
              </td>
              <td className="message-block">
                <div>
                  <span className="font-bolder">Type:</span>
                  {item.payload.reportType}
                </div>
                <div>
                  <span className="font-bolder">Message:</span>
                  {item.payload.message ?? "N/A"}
                </div>
              </td>
              <td>
                <div>
                  <button
                    disabled={isUpdating}
                    onClick={() => handleUpdate(item.id, "BLOCK")}
                  >
                    Block
                  </button>
                </div>
                <div>
                  <button
                    disabled={isUpdating}
                    onClick={() => handleUpdate(item.id, "RESOLVE")}
                  >
                    Resolve
                  </button>
                </div>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
}
