import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.*;
import javax.swing.border.EmptyBorder;

public class Calculator{
  public static JLabel display=new JLabel("");
  public static String operand1accumulator="";
  public static String operand2accumulator="";
  public static boolean operationFlag=false;
  public static enum OPERATION{ADDITION,SUBTRACTION,MULTIPLICATION,DIVISION};
  public static OPERATION currentOperator=null;

  public static void main(String[] args){
    JFrame frame = new JFrame();
    JButton additionButton = new JButton("Addition");
    JButton subtractionButton = new JButton("Subtraction");
    JButton multiplicationButton = new JButton("Multiplication");
    JButton divisionButton = new JButton("Division");
    JButton submitButton = new JButton("Submit");
    JPanel controllerPanel=new JPanel();
    JPanel resultPanel=new JPanel();
    JPanel numbersPanel=new JPanel();

    frame.setSize(500,500);
    frame.setVisible(true);
  
    frame.getContentPane().add(BorderLayout.EAST,controllerPanel);
    controllerPanel.setLayout(new BoxLayout(controllerPanel, BoxLayout.Y_AXIS));
    controllerPanel.setBackground(Color.darkGray);
    controllerPanel.add(additionButton);
    controllerPanel.add(subtractionButton);
    controllerPanel.add(multiplicationButton);
    controllerPanel.add(divisionButton);
    controllerPanel.add(submitButton);
  
    frame.getContentPane().add(BorderLayout.CENTER,resultPanel);
    resultPanel.setBackground(Color.WHITE);
    resultPanel.setBorder(new EmptyBorder(10,10,10,10));
    resultPanel.add(display);
    display.setFont(new Font("Fira Code",Font.PLAIN,24));

    frame.getContentPane().add(BorderLayout.SOUTH,numbersPanel);
    JButton button1=new JButton("1");
    JButton button2=new JButton("2");
    JButton button3=new JButton("3");
    JButton button4=new JButton("4");
    JButton button5=new JButton("5");
    JButton button6=new JButton("6");
    JButton button7=new JButton("7");
    JButton button8=new JButton("8");
    JButton button9=new JButton("9");
    JButton button0=new JButton("0");
    numbersPanel.add(button1);
    numbersPanel.add(button2);
    numbersPanel.add(button3);
    numbersPanel.add(button4);
    numbersPanel.add(button5);
    numbersPanel.add(button6);
    numbersPanel.add(button7);
    numbersPanel.add(button8);
    numbersPanel.add(button9);
    numbersPanel.add(button0);

    button1.addActionListener(new ActionListener(){
      @Override
      public void actionPerformed(ActionEvent e){
        if(operationFlag){
          operand2accumulator+="1";
          display.setText(display.getText()+"1");
        }else{
          operand1accumulator+="1";
          display.setText(display.getText()+"1");
        }
      }
    });

    button2.addActionListener(new ActionListener(){
      @Override
      public void actionPerformed(ActionEvent e){
        if(operationFlag){
          operand2accumulator+="2";
          display.setText(display.getText()+"2");
        }else{
          operand1accumulator+="2";
          display.setText(display.getText()+"2");
        }
      }
    });

    button3.addActionListener(new ActionListener(){
      @Override
      public void actionPerformed(ActionEvent e){
        if(operationFlag){
          operand2accumulator+="3";
          display.setText(display.getText()+"3");
        }else{
          operand1accumulator+="3";
          display.setText(display.getText()+"3");
        }
      }
    });

    button4.addActionListener(new ActionListener(){
      @Override
      public void actionPerformed(ActionEvent e){
        if(operationFlag){
          operand2accumulator+="4";
          display.setText(display.getText()+"4");
        }else{
          operand1accumulator+="4";
          display.setText(display.getText()+"4");
        }
      }
    });

    button5.addActionListener(new ActionListener(){
      @Override
      public void actionPerformed(ActionEvent e){
        if(operationFlag){
          operand2accumulator+="5";
          display.setText(display.getText()+"5");
        }else{
          operand1accumulator+="5";
          display.setText(display.getText()+"5");
        }
      }
    });

    button6.addActionListener(new ActionListener(){
      @Override
      public void actionPerformed(ActionEvent e){
        if(operationFlag){
          operand2accumulator+="6";
          display.setText(display.getText()+"6");
        }else{
          operand1accumulator+="6";
          display.setText(display.getText()+"6");
        }
      }
    });

    button7.addActionListener(new ActionListener(){
      @Override
      public void actionPerformed(ActionEvent e){
        if(operationFlag){
          operand2accumulator+="7";
          display.setText(display.getText()+"7");
        }else{
          operand1accumulator+="7";
          display.setText(display.getText()+"7");
        }
      }
    });

    button8.addActionListener(new ActionListener(){
      @Override
      public void actionPerformed(ActionEvent e){
        if(operationFlag){
          operand2accumulator+="8";
          display.setText(display.getText()+"8");
        }else{
          operand1accumulator+="8";
          display.setText(display.getText()+"8");
        }
      }
    });

    button9.addActionListener(new ActionListener(){
      @Override
      public void actionPerformed(ActionEvent e){
        if(operationFlag){
          operand2accumulator+="9";
          display.setText(display.getText()+"9");
        }else{
          operand1accumulator+="9";
          display.setText(display.getText()+"9");
        }
      }
    });

    button0.addActionListener(new ActionListener(){
      @Override
      public void actionPerformed(ActionEvent e){
        if(operationFlag){
          operand2accumulator+="0";
          display.setText(display.getText()+"0");
        }else{
          operand1accumulator+="0";
          display.setText(display.getText()+"0");
        }
      }
    });

    additionButton.addActionListener(new ActionListener(){
      @Override
      public void actionPerformed(ActionEvent e){
        operationFlag=true;
        currentOperator=OPERATION.ADDITION;
        display.setText(display.getText()+"+");
      }
    });

    subtractionButton.addActionListener(new ActionListener(){
      @Override
      public void actionPerformed(ActionEvent e){
        operationFlag=true;
        currentOperator=OPERATION.SUBTRACTION;
        display.setText(display.getText()+"-");
      }
    });

    multiplicationButton.addActionListener(new ActionListener(){
      @Override
      public void actionPerformed(ActionEvent e){
        operationFlag=true;
        currentOperator=OPERATION.MULTIPLICATION;
        display.setText(display.getText()+"*");
      }
    });

    divisionButton.addActionListener(new ActionListener(){
      @Override
      public void actionPerformed(ActionEvent e){
        operationFlag=true;
        currentOperator=OPERATION.DIVISION;
        display.setText(display.getText()+"/");
      }
    });

    submitButton.addActionListener((new ActionListener(){
      @Override
      public void actionPerformed(ActionEvent e){
        int operand1=Integer.valueOf(operand1accumulator);
        int operand2=Integer.valueOf(operand2accumulator);
        int result=0;
        
        if(currentOperator==OPERATION.ADDITION)
          result=operand1+operand2;
        else if(currentOperator==OPERATION.SUBTRACTION)
          result=operand1-operand2;
        else if(currentOperator==OPERATION.MULTIPLICATION)
          result=operand1*operand2;
        else
          result=operand1/operand2;

        display.setText(Float.toString(result));
        operand1=result;
      }
    }));
  }
}
