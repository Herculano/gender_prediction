defmodule Utils.Stats do

  @base_url Application.get_env(:gender_prediction, :stats_base_url)

  def get_last_frequency_names(name) do
    m_resp = HTTPotion.get("#{@base_url}/#{name}", query: %{sexo: "M"})
    f_resp = HTTPotion.get("#{@base_url}/#{name}", query: %{sexo: "F"})

    {
      format_incidency(m_resp.status_code, m_resp.body),
      format_incidency(f_resp.status_code, f_resp.body)
    }
  end

  defp format_incidency(resp, _) when resp == 404, do: :error
  defp format_incidency(resp, body) when resp == 200, do: Jason.decode!(body)

end
