import axios from "axios";
import { useEffect, useState } from "react";
import { toast } from "react-toastify";
import { IReport } from "../../types";

const fetchReports = () => {
  return axios.get("/reports").then(({ data }) => data.data);
};

const updateReportState = (reportId: string, action: string) => {
  const updateUrl =
    action === "RESOLVE"
      ? `/reports/${reportId}`
      : `/reports/block/${reportId}`;

  return axios.put(updateUrl);
};

export const useReport = () => {
  const [reports, setReports] = useState<IReport[]>([]);
  const [isUpdating, setIsUpdating] = useState<boolean>(false);

  useEffect(() => {
    fetchReports().then((data) => setReports(data));
  }, []);

  const handleUpdate = async (reportId: string, action: string) => {
    setIsUpdating(true);

    await updateReportState(reportId, action)
      .then(({ data }) => {
        if (action === "RESOLVE") {
          setReports((reports) => reports.filter((r) => r.id !== reportId));
        } else {
          setReports((reports) =>
            reports.map((r) => ({
              ...r,
              state: r.id === reportId ? "BLOCKED" : r.state,
            }))
          );
        }
        toast.success(data.message);
      })
      .catch((err) => toast.error("Something went wrong!"))
      .finally(() => setIsUpdating(false));
  };

  return {
    reports,
    handleUpdate,
    isUpdating,
  };
};
