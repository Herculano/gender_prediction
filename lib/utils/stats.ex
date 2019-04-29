defmodule Utils.Stats do

  @base_url "https://servicodados.ibge.gov.br/api/v2/censos/nomes"

  def get_last_frequency_names(name) do

    m_resp = HTTPoison.get! "#{@base_url}/#{name}?sexo=M"
    f_resp = HTTPoison.get! "#{@base_url}/#{name}?sexo=F"

    {
      format_incidency(m_resp.status_code, m_resp.body),
      format_incidency(f_resp.status_code, f_resp.body)
    }
  end

  defp format_incidency(resp, _) when resp == 404, do: :error
  defp format_incidency(resp, body) when resp == 200, do: Jason.decode!(body)

end
