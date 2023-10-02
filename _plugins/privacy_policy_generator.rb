module Jekyll
    class PrivacyPolicyGenerator < Genetator
        priority :low


        def generate(site)



            logp_enabled = site.config['lgpd_enabled']
            gdpr_enabled = site.config['gdpr_enabled']


            privacy_policy = generate_privacy_policy(lgpd_enabled, gdpr_enabled)

            site.config['privacy_policy'] = privacy_policy
        end

        def generate_privacy_policy(lgpd_enabled, gdpr_enabled)

            policy = ""
            policy += "Política de Privacidade\n\n"
            policy += "Esta é a nossa política de privacidade com base nas leis:\n"
      
            if lgpd_enabled
              policy += " - LGPD\n"
            
            end
      
            if gdpr_enabled
              policy += " - GDPR\n"
      
            end
      
            return policy
          end
        end
      end