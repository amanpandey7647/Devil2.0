FROM TeamExtremePro/ExtremeProUserbot:alpine

#clonning repo 
RUN git clone https://github.com/TeamExtremePro/ExtremeProUserbot/.git /root/userbot
#working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install -U -r requirements.txt
RUN pip3 install EXTRE

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]
