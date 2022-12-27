import * as React from "react";

import { useReport } from "./hooks/useReport";

export default function ReportsView() {
  const { reports, isUpdating, handleUpdate } = useReport();

  return (
    <div className="reports-block">
      {reports.map((item, index) => (
        <div key={index} className="block">
          <div>
            <div>
              <span className="font-bolder">Id:</span>
              {item.id}
            </div>
            <div>
              <span className="font-bolder">State:</span>
              {item.state}
            </div>
          </div>
          <div className="message-block">
            <div>
              <span className="font-bolder">Type:</span>
              {item.payload.reportType}
            </div>
            <div>
              <span className="font-bolder">Message:</span>
              {item.payload.message ?? "N/A"}
            </div>
          </div>
          <div>
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
          </div>
        </div>
      ))}
    </div>
  );
}
